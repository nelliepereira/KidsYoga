import 'package:flutter/material.dart';
import 'package:flutter_project/Modals/AnimalPoses.dart';
import 'package:velocity_x/velocity_x.dart';


class detailview extends StatefulWidget {
final AnimalPoses posesdata;

detailview({this.posesdata});


  @override
  _detailviewState createState() => _detailviewState();
}

class _detailviewState extends State<detailview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
        color: Colors.white),
          centerTitle: true,
        title:   widget.posesdata.poseName.text.xl2.letterSpacing(3).white.makeCentered(),
      ),
          body: SingleChildScrollView(
        child:
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
           child: Column(
             children: [
               Container(
                   height:  context.screenHeight *0.5,
                   width:  context.isMobile? context.screenWidth * 0.95 : 600,
                   child: Image.network(widget.posesdata.poseImg,
                     fit: BoxFit.fill
                     ,)),
               Text(widget.posesdata.poseDesc, style: TextStyle(fontSize: 20, ),textAlign: TextAlign.justify),
               5.heightBox,
               Text("Benefits", style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
               Text(widget.posesdata.poseLongDesc, style: TextStyle(fontSize: 20,),textAlign: TextAlign.justify),
             ],
           ),
          ),
        ),
      ),
    );
  }
}
