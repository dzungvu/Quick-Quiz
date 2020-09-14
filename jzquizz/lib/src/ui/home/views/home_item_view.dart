import 'package:flutter/material.dart';
import 'package:jzquizz/res/app_colors.dart';
import 'package:jzquizz/res/dimens.dart';
import 'package:jzquizz/src/model/home_item.dart';

class HomeItemView extends StatelessWidget {
  final HomeItem data;
  HomeItemView({@required this.data});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Expanded(
          flex: 1,
          child: ClipRRect(
            borderRadius: BorderRadius.all(
              Radius.circular(
                Dimens.cornerMedium,
              ),
            ),
            child: Image.network(
              data.img,
            ),
          ),
        ),
        Text(
          data.category,
          style: TextStyle(
            color: AppColors.black,
            fontSize: Dimens.itemTextLarge,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          data.title,
          style: TextStyle(
            color: AppColors.black,
            fontSize: Dimens.itemTextSubTitleLarge,
          ),
        ),
        RaisedButton(
          onPressed: () => {},
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
            side: BorderSide(
              color: AppColors.primaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
