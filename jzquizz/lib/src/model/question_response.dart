import 'package:flutter/cupertino.dart';
import 'package:jzquizz/src/model/question.dart';
import 'package:json_annotation/json_annotation.dart';

part 'question_response.g.dart';

@JsonSerializable()
class QuestionResponse {
  @JsonKey(name: 'status')
  final String status;
  @JsonKey(name: 'statusCode')
  final String statusCode;
  @JsonKey(name: 'result')
  final int result;
  @JsonKey(name: 'data')
  final List<Question> questions;

  QuestionResponse({
    @required this.status,
    @required this.statusCode,
    @required this.result,
    @required this.questions,
  });
}
