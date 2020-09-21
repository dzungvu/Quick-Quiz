import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jzquizz/res/app_colors.dart';
import 'package:jzquizz/res/dimens.dart';
import 'package:jzquizz/src/ui/home/home_screen.dart';

class WelComeScreen extends StatelessWidget {
  static const routeName = '/welcome_screen';
  @override
  Widget build(BuildContext context) {
    TextEditingController textController = TextEditingController();
    return Scaffold(
      body: Container(
        child: Center(
          child: Container(
            height: 250.0,
            margin: EdgeInsets.symmetric(
              horizontal: Dimens.marginCommon,
            ),
            decoration: BoxDecoration(
              color: AppColors.black,
              borderRadius: BorderRadius.all(
                Radius.circular(
                  Dimens.borderInputMedium,
                ),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Enter your player name',
                  style: TextStyle(
                    color: AppColors.white,
                    fontSize: Dimens.itemTextLarge,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(
                    Dimens.marginCommon,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextField(
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(
                                  Dimens.borderInputMedium,
                                ),
                              ),
                              borderSide: BorderSide(
                                color: AppColors.white,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(
                                  Dimens.borderInputMedium,
                                ),
                              ),
                              borderSide: BorderSide(
                                color: AppColors.white,
                              ),
                            ),
                            fillColor: AppColors.white,
                            hintText: 'Player name'),
                        controller: textController,
                        style: TextStyle(
                          color: AppColors.white,
                        ),
                      ),
                      Text(
                        '*This use for display as your username',
                        style: TextStyle(
                          color: AppColors.whiteAlPha,
                          fontSize: Dimens.itemTextSubTitle,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(
                    Dimens.marginCommon,
                  ),
                  child: ButtonTheme(
                    minWidth: double.infinity,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            Dimens.borderInputMedium,
                          ),
                        ),
                      ),
                      color: AppColors.white,
                      onPressed: () => {
                        if (textController.text.isEmpty)
                          {
                            Get.snackbar('Username is empty',
                                'Please enter your username to continue!')
                          }
                        else
                          {
                            Get.offAndToNamed(
                              HomeScreen.routeName,
                              arguments: textController.text,
                            ),
                          }
                      },
                      child: Text(
                        'Enter',
                        style: TextStyle(
                          color: AppColors.black,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
