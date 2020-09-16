import 'package:get/route_manager.dart';
import 'package:jzquizz/src/ui/home/home_screen.dart';
import 'package:jzquizz/src/ui/multi_shot/multi_shot_screen.dart';
import 'package:jzquizz/src/ui/quiz/quiz_screen.dart';

final pages = [
  GetPage(name: HomeScreen.routeName, page: () => HomeScreen()),
  GetPage(name: MultiShotScreen.routeName, page: () => MultiShotScreen()),
  GetPage(name: QuizScreen.routeName, page: () => QuizScreen()),
];
