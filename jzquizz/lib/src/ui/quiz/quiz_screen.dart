import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:get/state_manager.dart';
import 'package:jzquizz/res/app_colors.dart';
import 'package:jzquizz/res/dimens.dart';
import 'package:jzquizz/src/controllers/quiz_controller.dart';
import 'package:jzquizz/src/entities/question.dart';

class QuizScreen extends StatelessWidget {
  static const routeName = '/quiz_screen';
  @override
  Widget build(BuildContext context) {
    QuizController controller;
    Get.arguments == null
        ? {
            Get.snackbar('Something went wrong!',
                'Can not get quiz, please try again later'),
          }
        : {
            controller = Get.put(
              QuizController(
                listOfListQuestion:
                    (Get.arguments as QuizScreenData).listOfListQuestion,
              ),
            ),
          };
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
      body: controller == null
          ? Center(
              child: Text('No data, please try later'),
            )
          : Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Obx(() => Text(controller.currentQuestion == null
                      ? "Init with null"
                      : controller.currentQuestion.value.question)),
                  Obx(
                    () => Text(
                      controller.currentQuestionIndex == null
                          ? "Init with null"
                          : controller.currentQuestionIndex.value.toString(),
                    ),
                  ),
                  RaisedButton(
                    onPressed: () => {
                      controller.nextQuiz(),
                    },
                  )
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
