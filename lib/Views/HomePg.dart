import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/Views/FrontScreen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class HomePg extends StatefulWidget {
  @override
  _HomePgState createState() => _HomePgState();
}

class _HomePgState extends State<HomePg> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            AnimatedTextKit(
              animatedTexts: [
                TypewriterAnimatedText(
                  'Little Yogi !!!',
                  textStyle: const TextStyle(
                    fontSize: 32.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 4,
                    color: Colors.lightGreen
                  ),
                  speed: const Duration(milliseconds: 500),
                ),
              ],
              totalRepeatCount: 100,

              pause: const Duration(milliseconds: 500),
              displayFullTextOnTap: true,
              stopPauseOnTap: true,
            ),

            Container(
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(
                  color: Colors.lightGreen,
                  width: 10,
                ),
              ),
           child: Image.network('https://image.freepik.com/free-vector/cute-children-boys-girls-top-yoga-asanas-poses-cartoon-icons-collection-set_1284-8661.jpg'),

            ),



            MaterialButton(
              elevation: 4,
                       onPressed: () {
                return Navigator.push(context,
                    MaterialPageRoute(builder: (_) => FrontScreen()));
              },
              child:  Container(

                height: context.isMobile? 50: 50,
                width: context.isMobile? 150: 200,
                decoration: BoxDecoration(color: Colors.lightGreen,
                    borderRadius: BorderRadius.only(topLeft: Radius.elliptical(30, 30), bottomRight: Radius.elliptical(30, 30))),
                child: Center(child: Text('Push me',  style: TextStyle(fontSize: 24, color: Colors.white, letterSpacing: 3),)),
              ).objectCenter(),
            ),




          ],
        ),
      ),
    );
  }
}
