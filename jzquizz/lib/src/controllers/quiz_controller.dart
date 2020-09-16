import 'package:get/state_manager.dart';
import 'package:jzquizz/src/entities/question.dart';

class QuizController extends GetxController {
  List<List<Question>> listOfListQuestion;
  QuizController({this.listOfListQuestion});

  RxInt currentQuestionIndex;
  Rx currentQuestion;
  RxInt currentShot; // only use for multi-shot quiz

  void startQuiz() {
    if (listOfListQuestion == null) {
      return;
    } else {
      if (listOfListQuestion.length > 0) {
        currentQuestionIndex.value = 0;
        currentShot.value = 0;
        currentQuestion.value =
            listOfListQuestion[currentShot.value][currentQuestionIndex.value];
      }
    }
  }

  void nextQuiz() {
    if (currentQuestionIndex.value ==
        listOfListQuestion[currentQuestion.value].length - 1) {
      _nextShot();
      return;
    }
    currentQuestion.value++;
    currentQuestion.value =
        listOfListQuestion[currentShot.value][currentQuestionIndex.value];
  }

  void _nextShot() {
    currentShot.value++;
    currentQuestionIndex.value = 0;
    currentQuestion.value =
        listOfListQuestion[currentShot.value][currentQuestionIndex.value];
  }
}
