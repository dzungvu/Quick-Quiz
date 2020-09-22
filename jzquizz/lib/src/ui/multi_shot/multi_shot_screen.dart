import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jzquizz/res/app_colors.dart';
import 'package:jzquizz/res/dimens.dart';

class MultiShotScreen extends StatelessWidget {
  static const routeName = '/multi_shot_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.black,
        leading: IconButton(
          icon: Icon(
            Icons.navigate_before,
            color: Colors.white,
            size: Dimens.backIconSize,
          ),
          onPressed: () => Get.back(),
        ),
      ),
      body: Center(
        child: Text('No data'),
      ),
    );
  }
}
