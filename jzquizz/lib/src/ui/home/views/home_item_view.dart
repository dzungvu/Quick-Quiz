import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:jzquizz/res/app_colors.dart';
import 'package:jzquizz/res/dimens.dart';
import 'package:jzquizz/src/entities/home_item.dart';
import 'package:jzquizz/src/entities/question.dart';
import 'package:jzquizz/src/ui/quiz/quiz_screen.dart';

class HomeItemView extends StatelessWidget {
  final HomeItem data;
  final List<Question> listQuestion;

  HomeItemView({
    @required this.data,
    @required this.listQuestion,
  });

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width * 0.7;
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
              width: width,
              child: ClipRRect(
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    Dimens.cornerMedium,
                  ),
                ),
                child: Image.network(
                  data.img,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SizedBox(
            height: Dimens.marginGroupView,
          ),
          Text(
            data.category.toUpperCase(),
            style: TextStyle(
              color: AppColors.black,
              fontSize: Dimens.textTitleLarge,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            data.title,
            style: TextStyle(
              color: AppColors.black,
              fontSize: Dimens.itemTextSubTitle,
            ),
          ),
          SizedBox(
            height: Dimens.marginGroupView,
          ),
          RaisedButton(
            color: AppColors.black,
            onPressed: () => {
              Get.toNamed(QuizScreen.routeName,
                  arguments: QuizScreenData(listOfListQuestion: [listQuestion]))
            },
            child: Text(
              'Play',
              style: TextStyle(
                color: AppColors.white,
                fontSize: Dimens.itemTextSubTitle,
              ),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(
                  Dimens.cornerMedium,
                ),
              ),
            ),
          ),
          SizedBox(
            height: Dimens.marginGroupView,
          ),
        ],
      ),
    );
  }
}
