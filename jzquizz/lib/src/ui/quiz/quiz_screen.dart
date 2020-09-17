import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:get/state_manager.dart';
import 'package:jzquizz/res/app_colors.dart';
import 'package:jzquizz/res/dimens.dart';
import 'package:get/get.dart';
import 'package:jzquizz/src/controllers/quiz_controller.dart';
import 'package:jzquizz/src/entities/question.dart';
import 'package:jzquizz/src/ui/quiz/views/answers_view.dart';

class QuizScreen extends StatelessWidget {
  static const routeName = '/quiz_screen';
  @override
  Widget build(BuildContext context) {
    final QuizController controller = Get.put(
      QuizController(
        listOfListQuestion:
            (Get.arguments as QuizScreenData).listOfListQuestion,
      ),
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.black,
        leading: IconButton(
          icon: Icon(
            Icons.navigate_before,
            color: Colors.white,
            size: Dimens.backIconSize,
          ),
          onPressed: () => Get.back(),
        ),
      ),
      body: Container(
        child: Obx(
          () => controller.currentQuestion.value.img.url == ''
              ? _startView(controller)
              : _quizView(controller),
        ),
      ),
    );
  }

  Widget _startView(QuizController controller) {
    return Container(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Click Start button to start playing the Quiz!',
          ),
          SizedBox(
            height: Dimens.marginCommon,
          ),
          RaisedButton(
            color: AppColors.black,
            onPressed: () => {controller.startQuiz()},
            child: Text(
              'Start',
              style: TextStyle(
                color: AppColors.white,
                fontSize: Dimens.itemTextTitle,
              ),
            ),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
              Radius.circular(
                Dimens.borderInputMedium,
              ),
            )),
          ),
        ],
      ),
    );
  }

  Widget _quizView(QuizController controller) {
    return Obx(
      () => controller.screenState.value == 0
          ? Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: Dimens.marginCommon,
                ),
                Obx(
                  () => Center(
                    child: Text(
                      controller.currentQuestion.value.question,
                      style: TextStyle(
                        fontSize: Dimens.itemTextTitle,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                SizedBox(
                  height: Dimens.marginGroupView,
                ),
                Expanded(
                  flex: 6,
                  child: Obx(
                    () => Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: Dimens.marginCommon,
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            Dimens.borderInputMedium,
                          ),
                        ),
                        child: Image.network(
                          controller.currentQuestion.value.img.url,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: Dimens.marginSmall,
                ),
                Expanded(
                  flex: 4,
                  child: Obx(
                    () => AnswerView(
                      answers: controller.currentQuestion.value.answers,
                      correctAnswer:
                          controller.currentQuestion.value.correctAnswer,
                      goNext: () => {
                        controller.nextQuiz(),
                      },
                    ),
                  ),
                )
              ],
            )
          : Container(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Congratulation!!! You reach the end of the Quiz!',
                  ),
                  SizedBox(
                    height: Dimens.marginCommon,
                  ),
                  RaisedButton(
                    color: AppColors.black,
                    onPressed: () => {Get.back()},
                    child: Text(
                      'Finish',
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: Dimens.itemTextTitle,
                      ),
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                      Radius.circular(
                        Dimens.borderInputMedium,
                      ),
                    )),
                  ),
                ],
              ),
            ),
    );
  }
}

class QuizScreenData {
  List<List<Question>> listOfListQuestion;

  QuizScreenData({
    this.listOfListQuestion,
  });
}
