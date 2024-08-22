// To parse this JSON data, do
//
//     final roles = rolesFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'roles.freezed.dart';

part 'roles.g.dart';

Roles rolesFromJson(String str) => Roles.fromJson(json.decode(str));

String rolesToJson(Roles data) => json.encode(data.toJson());

@freezed
class Roles with _$Roles {
  const factory Roles({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "description") String? description,
    @JsonKey(name: "type") String? type,
    @JsonKey(name: "createdAt") DateTime? createdAt,
    @JsonKey(name: "updatedAt") DateTime? updatedAt,
    @JsonKey(name: "nb_users") int? nbUsers,
  }) = _Roles;

  factory Roles.fromJson(Map<String, dynamic> json) => _$RolesFromJson(json);
}
