// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Question _$QuestionFromJson(Map<String, dynamic> json) {
  return Question(
    order: json['num'] as int,
    question: json['question'] as String,
    answers: (json['answers'] as List)?.map((e) => e as String)?.toList(),
    correctAnswer: json['correct_answer'] as String,
    img: json['img'] == null
        ? null
        : ImageResponse.fromJson(json['img'] as Map<String, dynamic>),
    explaination: json['explaination'] as String,
  );
}

Map<String, dynamic> _$QuestionToJson(Question instance) => <String, dynamic>{
      'num': instance.order,
      'question': instance.question,
      'answers': instance.answers,
      'correct_answer': instance.correctAnswer,
      'img': instance.img,
      'explaination': instance.explaination,
    };
