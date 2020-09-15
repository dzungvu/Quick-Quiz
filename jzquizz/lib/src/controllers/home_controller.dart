import 'package:get/state_manager.dart';
import 'package:jzquizz/src/entities/question_response.dart';
import 'package:jzquizz/src/network/models/home_model.dart';

class HomeController extends GetxController {
  var _model = HomeModel();
  var questionResponse = QuestionResponse().obs;

  @override
  void onInit() async {
    questionResponse.value = await _model.fetchQuestion();
  }
}