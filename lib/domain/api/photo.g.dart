// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PhotoImpl _$$PhotoImplFromJson(Map<String, dynamic> json) => _$PhotoImpl(
      id: json['id'] as String,
      description: json['description'] as String?,
      user: PhotoUser.fromJson(json['user'] as Map<String, dynamic>),
      urls: PhotoUrls.fromJson(json['urls'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PhotoImplToJson(_$PhotoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'description': instance.description,
      'user': instance.user,
      'urls': instance.urls,
    };
