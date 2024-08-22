import 'package:hive/hive.dart';

part 'auth_box.g.dart';

@HiveType(typeId: 0)
class AuthBox extends HiveObject {
  @HiveField(0)
  String? encryptedJwtToken;

  @HiveField(1)
  DateTime? expirationDate;
}
