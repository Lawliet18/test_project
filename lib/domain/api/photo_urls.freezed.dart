// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'photo_urls.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PhotoUrls _$PhotoUrlsFromJson(Map<String, dynamic> json) {
  return _PhotoUrls.fromJson(json);
}

/// @nodoc
mixin _$PhotoUrls {
  String get small => throw _privateConstructorUsedError;
  String get full => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PhotoUrlsCopyWith<PhotoUrls> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotoUrlsCopyWith<$Res> {
  factory $PhotoUrlsCopyWith(PhotoUrls value, $Res Function(PhotoUrls) then) =
      _$PhotoUrlsCopyWithImpl<$Res, PhotoUrls>;
  @useResult
  $Res call({String small, String full});
}

/// @nodoc
class _$PhotoUrlsCopyWithImpl<$Res, $Val extends PhotoUrls>
    implements $PhotoUrlsCopyWith<$Res> {
  _$PhotoUrlsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? small = null,
    Object? full = null,
  }) {
    return _then(_value.copyWith(
      small: null == small
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as String,
      full: null == full
          ? _value.full
          : full // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PhotoUrlsImplCopyWith<$Res>
    implements $PhotoUrlsCopyWith<$Res> {
  factory _$$PhotoUrlsImplCopyWith(
          _$PhotoUrlsImpl value, $Res Function(_$PhotoUrlsImpl) then) =
      __$$PhotoUrlsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String small, String full});
}

/// @nodoc
class __$$PhotoUrlsImplCopyWithImpl<$Res>
    extends _$PhotoUrlsCopyWithImpl<$Res, _$PhotoUrlsImpl>
    implements _$$PhotoUrlsImplCopyWith<$Res> {
  __$$PhotoUrlsImplCopyWithImpl(
      _$PhotoUrlsImpl _value, $Res Function(_$PhotoUrlsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? small = null,
    Object? full = null,
  }) {
    return _then(_$PhotoUrlsImpl(
      small: null == small
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as String,
      full: null == full
          ? _value.full
          : full // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PhotoUrlsImpl implements _PhotoUrls {
  const _$PhotoUrlsImpl({required this.small, required this.full});

  factory _$PhotoUrlsImpl.fromJson(Map<String, dynamic> json) =>
      _$$PhotoUrlsImplFromJson(json);

  @override
  final String small;
  @override
  final String full;

  @override
  String toString() {
    return 'PhotoUrls(small: $small, full: $full)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhotoUrlsImpl &&
            (identical(other.small, small) || other.small == small) &&
            (identical(other.full, full) || other.full == full));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, small, full);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PhotoUrlsImplCopyWith<_$PhotoUrlsImpl> get copyWith =>
      __$$PhotoUrlsImplCopyWithImpl<_$PhotoUrlsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PhotoUrlsImplToJson(
      this,
    );
  }
}

abstract class _PhotoUrls implements PhotoUrls {
  const factory _PhotoUrls(
      {required final String small,
      required final String full}) = _$PhotoUrlsImpl;

  factory _PhotoUrls.fromJson(Map<String, dynamic> json) =
      _$PhotoUrlsImpl.fromJson;

  @override
  String get small;
  @override
  String get full;
  @override
  @JsonKey(ignore: true)
  _$$PhotoUrlsImplCopyWith<_$PhotoUrlsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
