import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:jzquizz/res/app_colors.dart';
import 'package:jzquizz/res/dimens.dart';

class AnswerButton extends StatelessWidget {
  final String answer;
  final bool isCorrect;
  final Function goNext;

  AnswerButton({
    @required this.answer,
    @required this.isCorrect,
    @required this.goNext,
  });
  @override
  Widget build(BuildContext context) {
    AnswerButtonController _mController = AnswerButtonController(
      goNext: goNext,
    );
    return GestureDetector(
      onTap: () => {_mController.select(isCorrect)},
      child: Obx(
        () => Container(
          margin: EdgeInsets.symmetric(
            vertical: Dimens.marginSmall,
          ),
          padding: EdgeInsets.all(Dimens.marginCommon),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(
                Dimens.borderInputMedium,
              ),
            ),
            color: _mController.stateColor.value,
          ),
          child: Text(
            answer,
            style: TextStyle(
              fontSize: Dimens.itemTextSubTitle,
              color: _mController.stateTextColor.value,
            ),
          ),
        ),
      ),
    );
  }
}

class AnswerButtonController extends GetxController {
  Function goNext;
  AnswerButtonController({@required this.goNext});

  static const STATE_INIT = AppColors.initAnswer;
  static const STATE_START_HOLD = AppColors.holdAnswer;
  static const STATE_END_HOLD = AppColors.selectAnswer;
  static const STATE_SELECT = AppColors.selectAnswer;
  static const STATE_CORRECT = AppColors.correctAnswer;
  static const STATE_WRONG = AppColors.wrongAnswer;

  static const STATE_TEXT_INIT = AppColors.initTextAnswer;
  static const STATE_TEXT_SELECT = AppColors.selectTextAnswer;
  static const STATE_TEXT_WRONG = AppColors.wrongTextAnswer;
  static const STATE_TEXT_CORRECT = AppColors.correctTextAnswer;

  Rx<Color> stateColor = AppColors.initAnswer.obs;
  Rx<Color> stateTextColor = AppColors.initTextAnswer.obs;

  void select(bool isCorrect) {
    stateColor.value = STATE_SELECT;
    stateTextColor.value = STATE_TEXT_SELECT;

    Future.delayed(
      const Duration(seconds: 1),
      () => {
        if (isCorrect) {markCorrect()} else {markWrong()}
      },
    );
  }

  void markCorrect() {
    stateColor.value = STATE_CORRECT;
    stateTextColor.value = STATE_TEXT_CORRECT;
    Future.delayed(
      const Duration(seconds: 1),
      () => {_nextQuestion()},
    );
  }

  void markWrong() {
    stateColor.value = STATE_WRONG;
    stateTextColor.value = STATE_TEXT_WRONG;
    Future.delayed(
      const Duration(seconds: 1),
      () => {_nextQuestion()},
    );
  }

  void _nextQuestion() {
    goNext();
  }
}
