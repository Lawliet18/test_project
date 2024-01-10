// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'photo_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PhotoUser _$PhotoUserFromJson(Map<String, dynamic> json) {
  return _PhotoUser.fromJson(json);
}

/// @nodoc
mixin _$PhotoUser {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PhotoUserCopyWith<PhotoUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotoUserCopyWith<$Res> {
  factory $PhotoUserCopyWith(PhotoUser value, $Res Function(PhotoUser) then) =
      _$PhotoUserCopyWithImpl<$Res, PhotoUser>;
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class _$PhotoUserCopyWithImpl<$Res, $Val extends PhotoUser>
    implements $PhotoUserCopyWith<$Res> {
  _$PhotoUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PhotoUserImplCopyWith<$Res>
    implements $PhotoUserCopyWith<$Res> {
  factory _$$PhotoUserImplCopyWith(
          _$PhotoUserImpl value, $Res Function(_$PhotoUserImpl) then) =
      __$$PhotoUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class __$$PhotoUserImplCopyWithImpl<$Res>
    extends _$PhotoUserCopyWithImpl<$Res, _$PhotoUserImpl>
    implements _$$PhotoUserImplCopyWith<$Res> {
  __$$PhotoUserImplCopyWithImpl(
      _$PhotoUserImpl _value, $Res Function(_$PhotoUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$PhotoUserImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PhotoUserImpl implements _PhotoUser {
  const _$PhotoUserImpl({required this.id, required this.name});

  factory _$PhotoUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$PhotoUserImplFromJson(json);

  @override
  final String id;
  @override
  final String name;

  @override
  String toString() {
    return 'PhotoUser(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhotoUserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PhotoUserImplCopyWith<_$PhotoUserImpl> get copyWith =>
      __$$PhotoUserImplCopyWithImpl<_$PhotoUserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PhotoUserImplToJson(
      this,
    );
  }
}

abstract class _PhotoUser implements PhotoUser {
  const factory _PhotoUser(
      {required final String id, required final String name}) = _$PhotoUserImpl;

  factory _PhotoUser.fromJson(Map<String, dynamic> json) =
      _$PhotoUserImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$PhotoUserImplCopyWith<_$PhotoUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
