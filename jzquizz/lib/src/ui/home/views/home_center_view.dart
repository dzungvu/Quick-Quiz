import 'package:flutter/material.dart';
import 'package:jzquizz/src/model/home_item.dart';
import 'package:jzquizz/src/model/quiz_item.dart';
import 'package:jzquizz/src/ui/home/views/home_item_view.dart';

class HomeCenterView extends StatelessWidget {
  final List<QuizItem> listQuizItem;

  HomeCenterView({@required this.listQuizItem});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      child: ListView.builder(
        itemBuilder: (context, index) => HomeItemView(
          data: HomeItem(
            img: listQuizItem[index].questions[0].img,
            category: listQuizItem[index].category,
            title: listQuizItem[index].title,
            source: listQuizItem[index].source,
          ),
        ),
        itemCount: listQuizItem.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
