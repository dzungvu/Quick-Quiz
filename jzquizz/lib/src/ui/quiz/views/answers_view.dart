import 'package:flutter/cupertino.dart';
import 'package:jzquizz/res/app_colors.dart';
import 'package:jzquizz/res/dimens.dart';
import 'package:jzquizz/src/ui/custom_views/answer_button.dart';

class AnswerView extends StatelessWidget {
  final List<String> answers;
  final String correctAnswer;
  final Function goNext;

  AnswerView({
    @required this.answers,
    this.correctAnswer,
    @required this.goNext,
  });

  @override
  Widget build(BuildContext context) {
    return _answerView();
  }

  Widget _answerView() {
    return Container(
      padding: EdgeInsets.all(Dimens.marginCommon),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(
            Dimens.borderInputMedium,
          ),
        ),
        color: AppColors.black,
      ),
      child: ListView.builder(
        itemBuilder: (context, index) => _itemQuiz(
          answers[index],
        ),
        itemCount: answers.length,
      ),
    );
  }

  Widget _itemQuiz(String answer) {
    return AnswerButton(
      answer: answer,
      isCorrect: answer == correctAnswer,
      goNext: goNext,
    );
  }
}
