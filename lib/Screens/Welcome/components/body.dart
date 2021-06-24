import 'package:flutter/material.dart';
import 'package:p/constant.dart';
import 'package:p/Screens/Main/feed.dart';
class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size ;
    final double mh = MediaQuery.of(context).size.height;
    final double mw = MediaQuery.of(context).size.width;

    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            top: 15,
            left: -10,
            child: Image.asset(
              "assets/img/main_1.png",
              width: size.width * 0.4,
            ),
          ),
          Positioned(
            bottom: -30,
            left: -50,
            child: Image.asset(
              "assets/img/main_2.png",
              width: size.width * 0.3,
            ),
          ),
          Positioned(
            bottom: -30,
            right: -50,
            child: Image.asset(
              "assets/img/main_3.png",
              width: size.width * 0.5,
            ),
          ),
          Positioned(
            bottom: 450,
            child: Image.asset(
              "assets/img/logo.png",
              width: size.width * 0.4,
            ),
          ),
          Text(
            "WELLCOME TO BEGUN",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Positioned(
            bottom: 250,
            child: Container(
              padding: EdgeInsets.only(left: mw * 0.036),
              height: mh * 0.07,
              width: mw * 0.78,
              child: TextField(
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                  decoration: InputDecoration(
                    icon: Icon(Icons.person,
                    color: kPrimaryColor),
                    border: InputBorder.none,
                    hintText: 'Your Email',
                    hintStyle: TextStyle(color: Colors.white),
                  ),
                  keyboardType: TextInputType.emailAddress),
                decoration: BoxDecoration(
                color: KPrimaryLightColor,
                  borderRadius:
                  BorderRadius.all(Radius.circular(30.0))),
            ),
          ),
          Positioned(
            bottom: 185,
            child: Container(
              padding: EdgeInsets.only(left: mw * 0.036),
              height: mh * 0.07,
              width: mw * 0.78,
              child: TextField(
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  decoration: InputDecoration(
                    icon: Icon(Icons.lock,
                    color: kPrimaryColor,),
                    border: InputBorder.none,
                    hintText: 'Your Password',
                    hintStyle: TextStyle(color: Colors.white),
                  ),
                  keyboardType: TextInputType.emailAddress),
                  decoration: BoxDecoration(
                  color: KPrimaryLightColor,
                  borderRadius:
                  BorderRadius.all(Radius.circular(30.0))),
            ),
          ),
          Positioned(
            bottom: 120,
              child: Container(
                child: ButtonTheme(
                  height: mh * 0.07,
                  minWidth:  mw * 0.78,
                  child: Container(
                    child: FlatButton(
                      color: Colors.transparent,
                      onPressed: () { 
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Feed()),
                        ) ;
                      },
                      child: Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                        size: mw * 0.073,
                ),
                ),
                    decoration: BoxDecoration(

                        color: kPrimaryColor,
                        borderRadius: BorderRadius.all(
                            Radius.circular(30.0))),
              ),
    ),
              ),
          ),
        ],
      ),
    );
  }
}

