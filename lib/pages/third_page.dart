import 'package:flutter/material.dart';
import 'package:lesson_navigator/pages/home_page.dart';
import 'package:lesson_navigator/pages/second_page.dart';

class ThirdPage extends StatefulWidget {
  static const id = "/third_page";

  const ThirdPage({Key? key}) : super(key: key);

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Third Page"),
      ),
      body: Center(
        child: MaterialButton(
          onPressed: () {
            // Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) {
            //   return HomePage();
            // }), (route) => false);

            Navigator.pop(context, "remove");
          },
          color: Colors.red,
          child: Text("3-button"),
        ),
      ),
    );
  }
}
