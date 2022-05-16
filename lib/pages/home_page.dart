import 'package:flutter/material.dart';
import 'package:lesson_navigator/pages/second_page.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Home Page"),
      ),
      body: Center(
        child: MaterialButton(
          onPressed: () async {
            String? result;

            result = await Navigator.push(context, MaterialPageRoute(builder: (context) {
              return SecondPage();
            }));
            print(result);

            // Navigator.pushNamed(context, SecondPage.id);

            // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
            //   return SecondPage();
            // }));
            // Navigator.pushReplacementNamed(context, SecondPage.id);
            // Navigator.pushNamedAndRemoveUntil(context, SecondPage.id, (route) => true);

            // Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) {
            //   return SecondPage();
            // }), (route) => false);
          },
          color: Colors.red,
          child: Text("1-button"),
        ),
      ),
    );
  }
}
