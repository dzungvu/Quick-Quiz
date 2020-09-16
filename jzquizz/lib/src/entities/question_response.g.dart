// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QuestionResponse _$QuestionResponseFromJson(Map<String, dynamic> json) {
  return QuestionResponse(
    status: json['status'] as String,
    statusCode: json['statusCode'] as int,
    result: json['result'] as int,
    listQuiz: (json['data'] as List)
        ?.map((e) =>
            e == null ? null : QuizItem.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$QuestionResponseToJson(QuestionResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'statusCode': instance.statusCode,
      'result': instance.result,
      'data': instance.listQuiz,
    };
