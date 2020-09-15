import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MultiShotScreen extends StatelessWidget {
  static const routeName = '/multi_shot_screen';
  @override
  Widget build(BuildContext context) {
    //return (Get.arguments == null) ? Text('null') : Container(
    return Container(
      child: Center(
        child: Text('Multi shot screen'),
      ),
    );
  }
}
