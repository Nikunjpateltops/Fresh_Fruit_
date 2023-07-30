import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

//---------------Splash Body--------------------//

Widget splashBody() {
  return SizedBox(
    height: double.infinity,
    width: double.infinity,
    child: Stack(
      children: [
        Container(
          constraints: BoxConstraints.tight(Size.infinite),
          // margin: EdgeInsets.only(top: 10, bottom: 10),
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(26)),
              image: DecorationImage(
                  fit: BoxFit.cover,
                  opacity: 0.9,
                  image: AssetImage('assets/images/SplashImage1.jpg'))),
        ),
        const SpinKitFadingCircle(
          color: Colors.white,
          size: 60.0,
        ),
        const Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text("Welcome to our",
                style: TextStyle(
                    fontFamily: 'Caveat',
                    fontWeight: FontWeight.w600,
                    fontSize: 26,
                    color: Colors.white)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 35),
                  child: Text(
                    "Fresh Fruit App",
                    style: TextStyle(
                        fontFamily: 'Caveat',
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 46),
                  ),
                ),
              ],
            )
          ],
        ),
      ],
    ),
  );
}

//-------------Comments------------------//

/*
  Padding(
              padding: const EdgeInsets.all(18.0),
              child: RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(
                        text: "Welcome to our  ",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w600,
                            color: Colors.black)),
                    TextSpan(
                        text: "Fresh Fruit App",
                        style: TextStyle(
                            fontSize: 44,
                            fontWeight: FontWeight.w600,
                            color: Colors.black)),
                  ],
                ),
              ),
            )
 */
