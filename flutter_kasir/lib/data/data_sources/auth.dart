import 'package:flutter_kasir/data/models/user/user.dart';
import 'package:logger/logger.dart';

import '../services/dio_services.dart';
import '../services/hive_services.dart';

class Auth {
  final apiService = ApiService();
  var logger = Logger();
  final HiveService _hiveService = HiveService(
    boxName: 'authBox',
    tokenKey: 'jwtToken',
    encryptionKey: 'flkgdlfjhsdojhlk', // Use a secure key
  );

  Future<User> login(String email, String password) async {
    try {
      final response = await apiService.postData(
        '/auth/local',
        {
          'identifier': email,
          'password': password,
        },
      );

      final jwt = response.data['jwt'];
      try {
        await _hiveService.saveToken(jwt);
      } catch (e) {
        logger.e('Error save token: $e');
      }
      final getMe =
          await apiService.getData('/users/me?populate=role', bearerToken: jwt);
      return User.fromJson(getMe.data);
    } catch (e) {
      logger.e('Error Auth: $e');
      rethrow;
    }
  }

  // check token
  Future<User?> checkToken() async {
    try {
      final jwt = await _hiveService.getToken();
      if (jwt != null) {
        final getMe = await apiService.getData('/users/me?populate=role',
            bearerToken: jwt);
        return User.fromJson(getMe.data);
      }
      return null;
    } catch (e) {
      logger.e('Error Auth: $e');
      rethrow;
    }
  }

  //logout
  Future<void> logout() async {
    try {
      await _hiveService.deleteToken();
    } catch (e) {
      logger.e('Error Auth: $e');
      rethrow;
    }
  }
}
