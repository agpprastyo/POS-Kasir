// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'roles.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Roles _$RolesFromJson(Map<String, dynamic> json) {
  return _Roles.fromJson(json);
}

/// @nodoc
mixin _$Roles {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "type")
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: "createdAt")
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updatedAt")
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "nb_users")
  int? get nbUsers => throw _privateConstructorUsedError;

  /// Serializes this Roles to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Roles
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RolesCopyWith<Roles> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RolesCopyWith<$Res> {
  factory $RolesCopyWith(Roles value, $Res Function(Roles) then) =
      _$RolesCopyWithImpl<$Res, Roles>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "type") String? type,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "updatedAt") DateTime? updatedAt,
      @JsonKey(name: "nb_users") int? nbUsers});
}

/// @nodoc
class _$RolesCopyWithImpl<$Res, $Val extends Roles>
    implements $RolesCopyWith<$Res> {
  _$RolesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Roles
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? type = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? nbUsers = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      nbUsers: freezed == nbUsers
          ? _value.nbUsers
          : nbUsers // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RolesImplCopyWith<$Res> implements $RolesCopyWith<$Res> {
  factory _$$RolesImplCopyWith(
          _$RolesImpl value, $Res Function(_$RolesImpl) then) =
      __$$RolesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "type") String? type,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "updatedAt") DateTime? updatedAt,
      @JsonKey(name: "nb_users") int? nbUsers});
}

/// @nodoc
class __$$RolesImplCopyWithImpl<$Res>
    extends _$RolesCopyWithImpl<$Res, _$RolesImpl>
    implements _$$RolesImplCopyWith<$Res> {
  __$$RolesImplCopyWithImpl(
      _$RolesImpl _value, $Res Function(_$RolesImpl) _then)
      : super(_value, _then);

  /// Create a copy of Roles
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? type = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? nbUsers = freezed,
  }) {
    return _then(_$RolesImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      nbUsers: freezed == nbUsers
          ? _value.nbUsers
          : nbUsers // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RolesImpl implements _Roles {
  const _$RolesImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "description") this.description,
      @JsonKey(name: "type") this.type,
      @JsonKey(name: "createdAt") this.createdAt,
      @JsonKey(name: "updatedAt") this.updatedAt,
      @JsonKey(name: "nb_users") this.nbUsers});

  factory _$RolesImpl.fromJson(Map<String, dynamic> json) =>
      _$$RolesImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "description")
  final String? description;
  @override
  @JsonKey(name: "type")
  final String? type;
  @override
  @JsonKey(name: "createdAt")
  final DateTime? createdAt;
  @override
  @JsonKey(name: "updatedAt")
  final DateTime? updatedAt;
  @override
  @JsonKey(name: "nb_users")
  final int? nbUsers;

  @override
  String toString() {
    return 'Roles(id: $id, name: $name, description: $description, type: $type, createdAt: $createdAt, updatedAt: $updatedAt, nbUsers: $nbUsers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RolesImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.nbUsers, nbUsers) || other.nbUsers == nbUsers));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, description, type, createdAt, updatedAt, nbUsers);

  /// Create a copy of Roles
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RolesImplCopyWith<_$RolesImpl> get copyWith =>
      __$$RolesImplCopyWithImpl<_$RolesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RolesImplToJson(
      this,
    );
  }
}

abstract class _Roles implements Roles {
  const factory _Roles(
      {@JsonKey(name: "id") final int? id,
      @JsonKey(name: "name") final String? name,
      @JsonKey(name: "description") final String? description,
      @JsonKey(name: "type") final String? type,
      @JsonKey(name: "createdAt") final DateTime? createdAt,
      @JsonKey(name: "updatedAt") final DateTime? updatedAt,
      @JsonKey(name: "nb_users") final int? nbUsers}) = _$RolesImpl;

  factory _Roles.fromJson(Map<String, dynamic> json) = _$RolesImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "description")
  String? get description;
  @override
  @JsonKey(name: "type")
  String? get type;
  @override
  @JsonKey(name: "createdAt")
  DateTime? get createdAt;
  @override
  @JsonKey(name: "updatedAt")
  DateTime? get updatedAt;
  @override
  @JsonKey(name: "nb_users")
  int? get nbUsers;

  /// Create a copy of Roles
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RolesImplCopyWith<_$RolesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
