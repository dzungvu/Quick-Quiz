import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:jzquizz/src/entities/image_response.dart';

part 'question.g.dart';

@JsonSerializable()
class Question {
  @JsonKey(name: 'num')
  final int order;
  @JsonKey(name: 'question')
  final String question;
  @JsonKey(name: 'answers')
  final List<String> answers;
  @JsonKey(name: 'correct_answer')
  final String correctAnswer;
  @JsonKey(name: 'img')
  final ImageResponse img;
  @JsonKey(name: 'explaination')
  final String explaination;

  Question({
    @required this.order,
    @required this.question,
    @required this.answers,
    @required this.correctAnswer,
    @required this.img,
    @required this.explaination,
  });

  factory Question.fromJson(Map<String, dynamic> json) => _$QuestionFromJson(json);
  Map<String, dynamic> toJson() => _$QuestionToJson(this);
}
