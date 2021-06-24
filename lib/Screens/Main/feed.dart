

import 'package:flutter/material.dart';
import 'package:p/constant.dart';
import 'package:p/Screens/Main/components/navigation.dart';

class Feed extends StatelessWidget {
  const Feed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: NavigationBar(),
    );
  }

  AppBar buildAppBar(context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        icon : Icon(Icons.arrow_back_sharp,
        color: Colors.grey,),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      actions: <Widget>[
        IconButton(
          onPressed: (){},
            icon: Icon(Icons.search,
            color : Colors.grey,),
        ),
        IconButton(
          onPressed: (){},
          icon: Icon(Icons.shopping_cart,
            color : Colors.grey,),
        ),
        SizedBox(width: kPadding/2,)
      ],
    );
  }
}
