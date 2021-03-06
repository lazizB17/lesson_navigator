import 'package:flutter/material.dart';
import 'package:lesson_navigator/pages/home_page.dart';
import 'package:lesson_navigator/pages/second_page.dart';
import 'package:lesson_navigator/pages/third_page.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      home: HomePage(),
      routes: {
        "/second_page": (context) => SecondPage(),
        "/third_page": (context) => ThirdPage(),
      },
    );
  }
}
