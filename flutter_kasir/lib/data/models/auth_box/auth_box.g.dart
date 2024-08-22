// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_box.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AuthBoxAdapter extends TypeAdapter<AuthBox> {
  @override
  final int typeId = 0;

  @override
  AuthBox read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AuthBox()
      ..encryptedJwtToken = fields[0] as String?
      ..expirationDate = fields[1] as DateTime?;
  }

  @override
  void write(BinaryWriter writer, AuthBox obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.encryptedJwtToken)
      ..writeByte(1)
      ..write(obj.expirationDate);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AuthBoxAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
