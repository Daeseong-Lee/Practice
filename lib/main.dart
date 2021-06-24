import 'package:flutter/material.dart';
import 'package:p/Screens/Welcome/welcome_screen.dart';
import 'package:p/constant.dart';

void main() => runApp(MyApp()) ;

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Login",
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      home : WelcomScreen() ,
      );
  }
}
