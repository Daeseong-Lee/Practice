import 'package:flutter/material.dart';
import 'package:p/Screens/Welcome/components/body.dart';

class WelcomScreen extends StatelessWidget {
  const WelcomScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset : false,
      body: Body(),
    ) ;
  }
}
