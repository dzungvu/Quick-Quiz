// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QuizItem _$QuizItemFromJson(Map<String, dynamic> json) {
  return QuizItem(
    content: json['content'] as String,
    category: json['category'] as String,
    author: json['author'] as String,
    publicTime: json['public_time'] as String,
    source: json['source'] as String,
    title: json['title'] as String,
    questions: (json['questions'] as List)
        ?.map((e) =>
            e == null ? null : Question.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$QuizItemToJson(QuizItem instance) => <String, dynamic>{
      'content': instance.content,
      'category': instance.category,
      'author': instance.author,
      'public_time': instance.publicTime,
      'source': instance.source,
      'title': instance.title,
      'questions': instance.questions,
    };
