import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:jzquizz/src/entities/question.dart';

part 'quiz_item.g.dart';

@JsonSerializable()
class QuizItem {
  @JsonKey(name: 'content')
  final String content;
  @JsonKey(name: 'category')
  final String category;
  @JsonKey(name: 'author')
  final String author;
  @JsonKey(name: 'public_time')
  final String publicTime;
  @JsonKey(name: 'source')
  final String source;
  @JsonKey(name: 'title')
  final String title;
  @JsonKey(name: 'questions')
  final List<Question> questions;

  QuizItem({
    @required this.content,
    @required this.category,
    @required this.author,
    @required this.publicTime,
    @required this.source,
    @required this.title,
    @required this.questions,
  });

  factory QuizItem.fromJson(Map<String, dynamic> json) =>
      _$QuizItemFromJson(json);
  Map<String, dynamic> toJson() => _$QuizItemToJson(this);
}
