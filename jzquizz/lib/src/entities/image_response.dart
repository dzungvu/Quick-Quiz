import 'package:flutter/cupertino.dart';
import 'package:json_annotation/json_annotation.dart';

part 'image_response.g.dart';

@JsonSerializable()
class ImageResponse {
  @JsonKey(name: 'alt')
  final String alt;
  @JsonKey(name: 'title')
  final String title;
  @JsonKey(name: 'url')
  final String url;

  ImageResponse({
    @required this.alt,
    @required this.title,
    @required this.url,
  });

  factory ImageResponse.fromJson(Map<String, dynamic> json) => _$ImageResponseFromJson(json);
  Map<String, dynamic> toJson() => _$ImageResponseToJson(this);
}
