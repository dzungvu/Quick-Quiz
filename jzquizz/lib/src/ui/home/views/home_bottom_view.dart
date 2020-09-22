//Get extra score with SERIES => PLAY
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:jzquizz/res/app_colors.dart';
import 'package:jzquizz/res/dimens.dart';
import 'package:jzquizz/src/ui/multi_shot/multi_shot_screen.dart';

class HomeBottomView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(
        Dimens.marginCommon,
      ),
      child: ButtonTheme(
        minWidth: double.infinity,
        height: 150.0,
        child: RaisedButton(
          color: AppColors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(
                Dimens.borderInputLarge,
              ),
            ),
          ),
          onPressed: () => {
            Get.toNamed(MultiShotScreen.routeName),
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Get extra score with',
                    style: TextStyle(
                      color: AppColors.white,
                      fontSize: Dimens.itemTextSubTitle,
                    ),
                  ),
                  Text(
                    'MULTI-SHOT',
                    style: TextStyle(
                      color: AppColors.white,
                      fontSize: Dimens.itemTextTitle,
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: Dimens.marginGroupView,
              ),
              ButtonTheme(
                height: 40,
                child: RaisedButton(
                  color: AppColors.white,
                  onPressed: () => {
                    Get.toNamed(MultiShotScreen.routeName),
                  },
                  child: Text(
                    'Play',
                    style: TextStyle(color: AppColors.black),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        Dimens.cornerMedium,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
