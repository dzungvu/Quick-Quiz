import 'package:flutter/cupertino.dart';
import 'package:get/state_manager.dart';
import 'package:jzquizz/res/app_colors.dart';
import 'package:jzquizz/res/dimens.dart';
import 'package:jzquizz/src/ui/custom_views/answer_button.dart';

class AnswerViewData {
  final List<String> answers;
  final String correctAnswer;
  final Function goNext;

  AnswerViewData({
    @required this.answers,
    @required this.correctAnswer,
    @required this.goNext,
  });
}

class AnswerView extends StatelessWidget {
  final AnswerViewData data;
  final Function minusPoint;

  AnswerViewController controller;

  AnswerView({
    @required this.data,
    @required this.minusPoint,
  }) {
    controller = AnswerViewController(
      data: data,
      minusPoint: minusPoint,
    );
  }

  @override
  Widget build(BuildContext context) {
    return _answerView();
  }

  Widget _answerView() {
    return Container(
      padding: EdgeInsets.all(Dimens.marginCommon),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(
            Dimens.borderInputMedium,
          ),
        ),
        color: AppColors.black,
      ),
      child: Obx(
        () => Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: _getListAnswer(
            controller.listButtonData.value,
            controller.listController.value,
          ),
        ),
      ),
      // child: ListView.builder(
      //   itemBuilder: (context, index) => _itemQuiz(
      //     answers[index],
      //   ),
      //   itemCount: answers.length,
      // ),
    );
  }

  ///
  /// Get list answer button with provided data
  ///
  List<Widget> _getListAnswer(List<AnswerButtonData> listData,
      List<AnswerButtonController> listController) {
    List<Widget> listToReturn = List();
    for (int i = 0; i < listData.length; i++) {
      listToReturn.add(_itemQuiz(listData[i], listController[i]));
    }

    return listToReturn;
  }

  ///
  /// Get answer button with provided data
  ///
  Widget _itemQuiz(AnswerButtonData data, AnswerButtonController controller) {
    return AnswerButton(
      data: data,
      controller: controller,
    );
  }
}

///
/// Controller for AnswerView
///
class AnswerViewController extends GetxController {
  final AnswerViewData data;
  final Function minusPoint;

  RxList<AnswerButtonData> listButtonData = List<AnswerButtonData>().obs;
  RxList<AnswerButtonController> listController =
      List<AnswerButtonController>().obs;

  AnswerViewController({
    @required this.data,
    @required this.minusPoint,
  }) {
    List<AnswerButtonData> listButtonDataTemp = List();
    List<AnswerButtonController> listControllerTemp = List();
    for (String answer in data.answers) {
      listButtonDataTemp.add(
        AnswerButtonData(
          answer: answer,
          isCorrect: answer == data.correctAnswer,
          doNext: data.goNext,
        ),
      );

      listControllerTemp.add(
        AnswerButtonController(
          goNext: data.goNext,
          markRightAnswer: () => {
            listControllerTemp[_getCorrectAnswer()].stateColor.value =
                AnswerButtonController.STATE_CORRECT,
            listControllerTemp[_getCorrectAnswer()].stateTextColor.value =
                AnswerButtonController.STATE_TEXT_CORRECT,
          },
          onAnswered: (isCorrect) => {
            if (!isCorrect)
              {
                minusPoint(),
              },
            _blockAllButton(),
          },
        ),
      );
    }

    listButtonData.value = listButtonDataTemp;
    listController.value = listControllerTemp;
  }

  void _blockAllButton() {
    for (int i = 0; i < data.answers.length; i++) {
      listController.value[i].canClick = false;
    }
  }

  int _getCorrectAnswer() {
    List<String> listAnswer = data.answers;
    for (int i = 0; i < listAnswer.length; i++) {
      if (listAnswer[i] == data.correctAnswer) {
        return i;
      }
    }
    return -1;
  }
}
