import 'dart:io';

import 'package:http/http.dart' as http;

class QuestionRepository {
  Future<http.Response> fetchQuestionList() {
    return http.get("https://quizzs.herokuapp.com/api/v1/quizzs?key=5f564c3f63419d3d60e83a6d");
  }
}