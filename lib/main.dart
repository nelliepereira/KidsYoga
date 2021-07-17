import 'package:flutter/material.dart';
import 'package:flutter_project/Views/HomePg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_core/firebase_core.dart';

 void main() async {
   WidgetsFlutterBinding.ensureInitialized();
   await Firebase.initializeApp();
   runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override

  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return MaterialApp(
      title: 'Little Yogi',
      theme: ThemeData(primarySwatch: Colors.lightGreen,
        textTheme: GoogleFonts.latoTextTheme(textTheme).copyWith(
           headline1: TextStyle(fontSize: 35, fontWeight: FontWeight.bold,color: Colors.black),
           headline2: TextStyle(fontSize: 20, fontWeight: FontWeight.w300,),
         ),


      ),
      home: HomePg(),
    );
  }
}

//flutter run -d chrome --web-renderer html --profile