import 'package:hive/hive.dart';
import 'package:encrypt/encrypt.dart' as encrypt;

import '../models/auth_box/auth_box.dart';

class HiveService {
  final String boxName;
  final String tokenKey;
  final String encryptionKey;

  late encrypt.Encrypter _encrypter;
  late encrypt.IV _iv;

  HiveService({
    required this.boxName,
    required this.tokenKey,
    required this.encryptionKey,
  }) {
    final key = encrypt.Key.fromUtf8(encryptionKey);
    _iv = encrypt.IV.fromLength(16);
    _encrypter = encrypt.Encrypter(encrypt.AES(key));
  }

  Future<void> initialize() async {
    await Hive.openBox<AuthBox>(boxName);
  }

  Future<void> saveToken(String token) async {
    final box = await Hive.openBox<AuthBox>(boxName);
    final encryptedToken = _encrypter.encrypt(token, iv: _iv).base64;
    final authBox = AuthBox()
      ..encryptedJwtToken = encryptedToken
      ..expirationDate = DateTime.now().add(const Duration(days: 1));
    await box.put(tokenKey, authBox);
  }

  Future<String?> getToken() async {
    final box = await Hive.openBox<AuthBox>(boxName);
    final authBox = box.get(tokenKey);

    if (authBox != null && authBox.expirationDate != null) {
      if (DateTime.now().isAfter(authBox.expirationDate!)) {
        // Token has expired, delete it
        await deleteToken();
        return null;
      }
      if (authBox.encryptedJwtToken != null) {
        return _encrypter.decrypt64(authBox.encryptedJwtToken!, iv: _iv);
      }
    }
    return null;
  }

  Future<void> deleteToken() async {
    final box = await Hive.openBox<AuthBox>(boxName);
    await box.delete(tokenKey);
  }
}
