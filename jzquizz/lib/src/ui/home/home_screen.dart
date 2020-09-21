import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:jzquizz/res/dimens.dart';
import 'package:jzquizz/src/controllers/home_controller.dart';
import 'package:jzquizz/src/ui/home/views/home_bottom_view.dart';
import 'package:jzquizz/src/ui/home/views/home_center_view.dart';
import 'package:jzquizz/src/ui/home/views/homme_top_view.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/homem_screen';
  @override
  Widget build(BuildContext context) {
    String playerName = Get.arguments.toString().toUpperCase();
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            HomeTopView(
              playerName: playerName,
            ),
            Expanded(
              flex: 1,
              child: GetX<HomeController>(
                init: HomeController(),
                builder: (val) => HomeCenterView(
                  listQuizItem: val.questionResponse.value.listQuiz,
                ),
              ),
            ),
            HomeBottomView(),
            SizedBox(
              height: Dimens.marginGroupView,
            ),
          ],
        ),
      ),
    );
  }
}
