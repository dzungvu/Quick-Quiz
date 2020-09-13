import 'package:flutter/material.dart';
import 'package:jzquizz/routes.dart';
import 'package:jzquizz/src/ui/home/home_screen.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
      },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Quick Quizz',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomeScreen(),
        routes: routes,
      ),
    ); 
  }
}