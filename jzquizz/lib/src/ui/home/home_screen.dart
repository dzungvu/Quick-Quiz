import 'package:flutter/material.dart';
import 'package:jzquizz/src/model/quiz_item.dart';
import 'package:jzquizz/src/ui/home/views/home_bottom_view.dart';
import 'package:jzquizz/src/ui/home/views/home_center_view.dart';
import 'package:jzquizz/src/ui/home/views/homme_top_view.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = 'homem_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            HomeTopView(),
            Expanded(
              flex: 1,
              child: HomeCenterView(
                listQuizItem: List<QuizItem>(),
              ),
            ),
            HomeBottomView(),
          ],
        ),
      ),
    );
  }
}
