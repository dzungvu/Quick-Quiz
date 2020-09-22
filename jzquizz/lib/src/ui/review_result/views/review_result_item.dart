import 'package:flutter/cupertino.dart';
import 'package:jzquizz/res/app_colors.dart';
import 'package:jzquizz/res/dimens.dart';

class ReviewResultItemData {
  String question;
  String answer;
  String explaination;

  ReviewResultItemData({
    @required this.question,
    @required this.answer,
    @required this.explaination,
  });
}

class ReviewResultItemView extends StatelessWidget {
  final ReviewResultItemData data;
  ReviewResultItemView({
    @required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(
        Dimens.marginCommon,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            data.question == null ? "Null" : data.question,
            style: TextStyle(
              color: AppColors.black,
              fontSize: Dimens.itemTextTitle,
            ),
          ),
          SizedBox(
            height: Dimens.safeAreaSmall,
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: Dimens.marginCommon,
              vertical: Dimens.marginSmall,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(
                  Dimens.borderInputMedium,
                ),
              ),
              color: AppColors.reviewAnswer,
            ),
            child: Text(
              data.answer == null ? "Null" : data.answer,
              style: TextStyle(
                color: AppColors.black80,
                fontSize: Dimens.itemTextTitle,
              ),
            ),
          ),
          SizedBox(
            height: Dimens.safeAreaSmall,
          ),
          Text(
            data.explaination == null ? "Null" : data.explaination,
            style: TextStyle(
              color: AppColors.black,
              fontSize: Dimens.itemTextTitle,
            ),
          ),
          SizedBox(
            height: Dimens.marginCommon,
          )
        ],
      ),
    );
  }
}
