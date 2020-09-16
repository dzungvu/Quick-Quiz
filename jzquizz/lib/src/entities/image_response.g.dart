// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ImageResponse _$ImageResponseFromJson(Map<String, dynamic> json) {
  return ImageResponse(
    alt: json['alt'] as String,
    title: json['title'] as String,
    url: json['url'] as String,
  );
}

Map<String, dynamic> _$ImageResponseToJson(ImageResponse instance) =>
    <String, dynamic>{
      'alt': instance.alt,
      'title': instance.title,
      'url': instance.url,
    };
