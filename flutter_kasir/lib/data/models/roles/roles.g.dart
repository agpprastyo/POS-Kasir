// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'roles.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RolesImpl _$$RolesImplFromJson(Map<String, dynamic> json) => _$RolesImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      description: json['description'] as String?,
      type: json['type'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      nbUsers: (json['nb_users'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$RolesImplToJson(_$RolesImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'type': instance.type,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'nb_users': instance.nbUsers,
    };
