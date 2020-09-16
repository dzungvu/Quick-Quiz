import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:jzquizz/src/entities/home_item.dart';
import 'package:jzquizz/src/entities/quiz_item.dart';
import 'package:jzquizz/src/ui/home/views/home_item_view.dart';

class HomeCenterView extends StatelessWidget {
  final List<QuizItem> listQuizItem;

  HomeCenterView({@required this.listQuizItem});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: double.infinity,
        child: listQuizItem.length == 0
            ? Center(
                child: Text('Loading...'),
              )
            : CarouselSlider.builder(
                aspectRatio: 0.9,
                autoPlay: false,
                reverse: false,
                initialPage: 0,
                viewportFraction: 0.8,
                itemCount: listQuizItem.length,
                itemBuilder: (context, index) => HomeItemView(
                  data: HomeItem(
                    img: listQuizItem[index].questions[0].img.url,
                    category: listQuizItem[index].category,
                    title: listQuizItem[index].title,
                    source: listQuizItem[index].source,
                  ),
                  listQuestion: listQuizItem[index].questions,
                ),
              ));
  }
}
