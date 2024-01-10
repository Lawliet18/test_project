import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_app/domain/api/photo_urls.dart';
import 'package:test_app/domain/api/photo_user.dart';

part 'photo.freezed.dart';
part 'photo.g.dart';

@freezed
class Photo with _$Photo {
  const factory Photo({
    required String id,
    required String? description,
    required PhotoUser user,
    required PhotoUrls urls,
  }) = _Photo;

  factory Photo.fromJson(Map<String, dynamic> json) => _$PhotoFromJson(json);
}
