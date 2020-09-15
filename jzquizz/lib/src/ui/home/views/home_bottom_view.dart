//Get extra score with SERIES => PLAY
import 'package:flutter/material.dart';
import 'package:jzquizz/res/app_colors.dart';
import 'package:jzquizz/res/dimens.dart';

class HomeBottomView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      minWidth: double.infinity,
      height: 150.0,
      child: RaisedButton(
        onPressed: () => {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Get extra score with',
                    style: TextStyle(
                      color: AppColors.black,
                      fontSize: Dimens.itemTextSubTitle,
                    ),
                  ),
                  Text(
                    'MULTI-SHOT',
                    style: TextStyle(
                      color: AppColors.black,
                      fontSize: Dimens.itemTextTitle,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: ButtonTheme(
                height: 50,
                child: RaisedButton(
                  color: AppColors.black,
                  onPressed: () => {},
                  child: Text(
                    'Play',
                    style: TextStyle(color: AppColors.white),
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
            ),
          ],
        ),
      ),
    );
  }
}
