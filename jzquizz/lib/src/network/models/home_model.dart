import 'dart:convert';

import 'package:jzquizz/src/entities/question_response.dart';
import 'package:jzquizz/src/network/repository/question_repository.dart';

class HomeModel {
  QuestionRepository _questionRepository = QuestionRepository();
  Future<QuestionResponse> fetchQuestion() async {
    final response = await _questionRepository.fetchQuestionList();
    if (response.statusCode == 200) {
      Map questionResponseMap = jsonDecode(response.body);
      print(questionResponseMap);
      var result = QuestionResponse.fromJson(questionResponseMap);
      return result;
    } else {
      throw Exception('Fail to get data');
    }
  }
}
