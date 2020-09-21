import 'package:flutter/material.dart';
import 'package:jzquizz/res/app_colors.dart';
import 'package:jzquizz/res/dimens.dart';

class HomeTopView extends StatelessWidget {
  final String playerName;
  HomeTopView({
    @required this.playerName,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(
        Dimens.marginCommon,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: RichText(
              text: TextSpan(children: [
                TextSpan(
                  text: 'PLAYER',
                  style: TextStyle(
                    color: AppColors.lightBlack,
                    fontWeight: FontWeight.normal,
                    fontSize: Dimens.itemTextTitle,
                  ),
                ),
                TextSpan(
                  text: playerName,
                  style: TextStyle(
                    color: AppColors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: Dimens.itemTextTitle,
                  ),
                ),
              ]),
            ),
          ),
          IconButton(
            onPressed: () => {},
            icon: Icon(
              Icons.supervised_user_circle,
              size: Dimens.iconSize,
            ),
          )
        ],
      ),
    );
  }
}
