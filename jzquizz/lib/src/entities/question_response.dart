import 'package:json_annotation/json_annotation.dart';
import 'package:jzquizz/src/entities/quiz_item.dart';

part 'question_response.g.dart';

@JsonSerializable()
class QuestionResponse {
  @JsonKey(name: 'status')
  String status;
  @JsonKey(name: 'statusCode')
  int statusCode;
  @JsonKey(name: 'result')
  int result;
  @JsonKey(name: 'data')
  List<QuizItem> listQuiz = List.empty();

  QuestionResponse({
    this.status,
    this.statusCode,
    this.result,
    this.listQuiz,
  });

  factory QuestionResponse.fromJson(Map<String, dynamic> json) =>
      _$QuestionResponseFromJson(json);
  Map<String, dynamic> toJson() => _$QuestionResponseToJson(this);
}
