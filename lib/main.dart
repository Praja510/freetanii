
import 'package:flutter/material.dart';
import 'package:freetanii/registration/login_screen.dart';

void main()  {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xff020064),
      ),
      home: LoginScreen(),
    );
  }
}
