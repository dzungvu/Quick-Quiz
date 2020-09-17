import 'package:get/state_manager.dart';
import 'package:jzquizz/src/entities/image_response.dart';
import 'package:jzquizz/src/entities/question.dart';

class QuizController extends GetxController {
  List<List<Question>> listOfListQuestion;
  QuizController({this.listOfListQuestion});

  RxInt currentQuestionIndex = 0.obs;
  Rx<Question> currentQuestion = Question(
          order: 0,
          question: '',
          answers: List.empty(),
          correctAnswer: '',
          img: ImageResponse(alt: '', title: '', url: ''),
          explaination: '')
      .obs;
  RxInt currentShot = 0.obs; // only use for multi-shot quiz

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
        listOfListQuestion[currentShot.value].length - 1) {
      _nextShot();
      return;
    }
    currentQuestionIndex.value++;
    currentQuestion.value =
        listOfListQuestion[currentShot.value][currentQuestionIndex.value];
  }

  void _nextShot() {
    if (currentShot.value == listOfListQuestion.length - 1) {
      return;
    }
    currentShot.value++;
    currentQuestionIndex.value = 0;
    currentQuestion.value =
        listOfListQuestion[currentShot.value][currentQuestionIndex.value];
  }
}
