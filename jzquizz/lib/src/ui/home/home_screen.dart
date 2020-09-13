import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = 'homem_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text("This is home screen"),
        ),
      ),
    );
  }
}
