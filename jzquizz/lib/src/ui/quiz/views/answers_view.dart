import 'package:flutter/cupertino.dart';
import 'package:jzquizz/res/app_colors.dart';
import 'package:jzquizz/res/dimens.dart';

class AnswerView extends StatelessWidget {
  final List<String> answers;

  AnswerView({@required this.answers});

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
    return GestureDetector(
      onTap: () => {},
      child: Container(
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
          color: AppColors.white,
        ),
        child: Text(
          answer,
          style: TextStyle(
            fontSize: Dimens.itemTextSubTitle,
            color: AppColors.lightBlack,
          ),
        ),
      ),
    );
  }
}
