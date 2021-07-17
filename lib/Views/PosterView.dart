import 'package:flutter/material.dart';
import 'package:flutter_project/Modals/YogaPosters.dart';
import 'package:velocity_x/velocity_x.dart';

class posterview extends StatefulWidget {
  final YogaPosters posterdata;

  posterview({this.posterdata});

  @override
  _posterviewState createState() => _posterviewState();
}

class _posterviewState extends State<posterview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
            color: Colors.white),
        centerTitle: true,
        title: widget.posterdata.posterName.text.xl2
            .letterSpacing(3)
            .white
            .makeCentered(),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            child: Column(
              children: [
                Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(
                        color: Colors.lightGreen,
                        width: 5,
                      ),
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.network(
                          widget.posterdata.posterImg,
                          fit: BoxFit.fill,
                        ),
                      ),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
