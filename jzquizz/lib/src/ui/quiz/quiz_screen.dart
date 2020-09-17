import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:get/state_manager.dart';
import 'package:jzquizz/res/app_colors.dart';
import 'package:jzquizz/res/dimens.dart';
import 'package:get/get.dart';
import 'package:jzquizz/src/controllers/quiz_controller.dart';
import 'package:jzquizz/src/entities/question.dart';

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
        child: Column(
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
            Obx(
              () => Expanded(
                flex: 1,
                child: Container(
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
