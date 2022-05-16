import 'package:flutter/material.dart';
import 'package:lesson_navigator/pages/third_page.dart';

class SecondPage extends StatefulWidget {
  static const id = "/second_page";

  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Second Page"),
      ),
      body: Center(
        child: MaterialButton(
          onPressed: () async {
            String? result;

            result = await Navigator.push(context, MaterialPageRoute(builder: (context) {
              return ThirdPage();
            }));
            if(result == "remove") {
              Navigator.pop(context);
            }
          },
          color: Colors.red,
          child: Text("2-button"),
        ),
      ),
    );
  }
}
