import 'package:freezed_annotation/freezed_annotation.dart';

part 'photo_user.freezed.dart';
part 'photo_user.g.dart';

@freezed
class PhotoUser with _$PhotoUser {
  const factory PhotoUser({
    required String id,
    required String name,
  }) = _PhotoUser;

  factory PhotoUser.fromJson(Map<String, dynamic> json) =>
      _$PhotoUserFromJson(json);
}
