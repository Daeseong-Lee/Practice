import 'package:flutter/material.dart';
import 'package:p/Screens/Main/components/categories.dart';
import 'package:p/constant.dart';
import 'package:p/models/tpm.dart';


class NavigationBar extends StatelessWidget {
  const NavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kPadding),
          child: Text("Vegitable",
              style: Theme
                  .of(context)
                  .textTheme
                  .headline5
          ),
        ),
        Categories(),
        Post(),
      ],
    );
  }
}