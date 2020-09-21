import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:jzquizz/routes.dart';
import 'package:jzquizz/src/ui/welcome/welcome_screen.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
      },
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Quick Quizz',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: WelComeScreen(),
        getPages: pages,
      ),
    ); 
  }
}