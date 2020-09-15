import 'package:flutter/material.dart';
import 'package:json_serializable/builder.dart';
import 'package:json_annotation/json_annotation.dart';

part 'question.g.dart';

@JsonSerializable()
class Question {
  @JsonKey(name: 'num')
  final int order;
  @JsonKey(name: 'question')
  final String question;
  @JsonKey(name: 'answers')
  final List<String> answers;
  @JsonKey(name: 'correctAnswer')
  final String correctAnswer;
  @JsonKey(name: 'img')
  final String img;
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
