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
    correctAnswer: json['correctAnswer'] as String,
    img: json['img'] as String,
    explaination: json['explaination'] as String,
  );
}

Map<String, dynamic> _$QuestionToJson(Question instance) => <String, dynamic>{
      'num': instance.order,
      'question': instance.question,
      'answers': instance.answers,
      'correctAnswer': instance.correctAnswer,
      'img': instance.img,
      'explaination': instance.explaination,
    };
