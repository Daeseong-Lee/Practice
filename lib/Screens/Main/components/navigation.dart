import 'package:flutter/material.dart';
import 'package:p/Screens/Main/components/categories.dart';
import 'package:p/constant.dart';

class NavigationBar extends StatelessWidget {
  const NavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding : const EdgeInsets.symmetric(horizontal: kPadding),
          child: Text("Vegitable",
              style : Theme.of(context)
                  .textTheme
                  .headline5
          ),
        ),
        Categories(),
        Expanded (
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kPadding),
            child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.75,
              mainAxisSpacing: kPadding,
            ),
                itemBuilder: (context, index) => ItemCard()),
          ),
        )
      ],
    );
  }

  Column ItemCard() {
    final Function press ;
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(kPadding),
            height: 180,
            width: 160,
            decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(29),
            ),
            child: Image.asset('assets/img/pine.png'),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kPadding/4),
            child: Text('Pine Tree',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black26,
            ),),
          ),
          Text("\$ 200",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      );
  }
}

