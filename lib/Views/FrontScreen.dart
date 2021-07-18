import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/Modals/AnimalPoses.dart';
import 'package:flutter_project/Modals/YogaPosters.dart';
import 'package:flutter_project/Views/DetailView.dart';
import 'package:flutter_project/Views/PosterView.dart';
import 'package:flutter_project/Widgets/Images.dart';
import 'package:flutter_project/Widgets/drawer.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FrontScreen extends StatefulWidget {
  @override
  _FrontScreenState createState() => _FrontScreenState();
}

class _FrontScreenState extends State<FrontScreen> {
  final ref = FirebaseFirestore.instance.collection('AnimalYogaPoses');
  final refposter = FirebaseFirestore.instance.collection('YogaPosters');

   @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.white),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.face_outlined, color: Colors.white,
            ),
            5.widthBox,
            "Little Yogi".text.xl2.letterSpacing(3).white.make(),
                   ],
        ),
      ),
      drawer: Drawer(
        child: drawermenu(),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            child: Column(
              children: [
                Text("Yoga keeps you fit and teaches you to stay focused, be disciplined and much more." , style: TextStyle(fontSize:20, color: Colors.lightGreen,),textAlign: TextAlign.center,),
                10.heightBox,
                context.isMobile? Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(

                      child: banner()),
                ):banner(),
                10.heightBox,
               Text('Try an animal Pose',style: TextStyle(fontSize:20, color: Colors.lightGreen) ),
                Container(
                  height: 60,
                  width: context.screenWidth *0.95,
                  child: StreamBuilder(
                      stream: ref.snapshots(),
                      builder: (context,AsyncSnapshot<QuerySnapshot> snapshot){
                        if(snapshot.hasData){
                          List<AnimalPoses> poselist  = snapshot.data.docs.map((e) => AnimalPoses.fromJson(e.data())).toList();
                          return ListView.builder(
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                           //   physics: NeverScrollableScrollPhysics(),
                              itemCount: snapshot.data.docs.length,
                              itemBuilder: (context, index){
                                return
                                  InkWell(
                                    onTap: (){
                                      Navigator.push(context, MaterialPageRoute(builder: (_) =>  detailview(posesdata: poselist[index])));
                                    },

                                    child: Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Container(

                                          height: 5,
                                          width: 160,
                                          decoration: BoxDecoration(color: Colors.lightGreen,
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.grey.withOpacity(0.7),
                                                  //spreadRadius: 4,
                                                  blurRadius: 7,
                                                  offset: Offset(0, 2), // changes position of shadow
                                                ),
                                              ],
                                              borderRadius: BorderRadius.only(topLeft: Radius.circular(70), bottomRight: Radius.circular(70))),
                                          child: Center(child:
                                          Text(poselist[index].poseName, style: TextStyle(color: Colors.white,fontSize: 20),))),
                                    ),
                                  );
                              });
                        }else {
                          throw Exception();

                        }
                      }
                  ),
                ),
                10.heightBox,
                Text("FREE YOGA POSTER", style: TextStyle(color: Colors.lightGreen, fontSize:20, ),),
                Container(
                  height: context.screenHeight,
                  width: context.screenWidth *0.95,

                  child: StreamBuilder(
                      stream: refposter.snapshots(),
                      builder: (context,AsyncSnapshot<QuerySnapshot> snapshot){
                        if(snapshot.hasData){
                          List<YogaPosters> posterlist  = snapshot.data.docs.map((e) => YogaPosters.fromJson(e.data())).toList();
                          return GridView.builder(gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: context.isMobile? 2:4),
                                     shrinkWrap: true,
                             scrollDirection: Axis.vertical,
                              physics: NeverScrollableScrollPhysics(),
                              itemCount: snapshot.data.docs.length,
                              itemBuilder: (context, index){
                                return
                                  InkWell(
                                    onTap: (){
                                      Navigator.push(context, MaterialPageRoute(builder: (_) =>  posterview(posterdata: posterlist[index])));
                                    },

                                    child: Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Container(
                                          height: 450,
                                          width: 450,
                                         // color: Colors.blue,
                                          // decoration: BoxDecoration(color: Colors.lightGreen,
                                          //     borderRadius: BorderRadius.only(topLeft: Radius.circular(70), bottomRight: Radius.circular(70))),
                                          child:
                                Container(
                                padding: EdgeInsets.all(5),
                                margin: EdgeInsets.all(5),
                                decoration: BoxDecoration(

                                borderRadius: BorderRadius.circular(30),
                                border: Border.all(
                                color: Colors.lightGreen,
                                width: 5,
                                ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.network(posterlist[index].posterImg,height: 350,width: 350,),
                                ),

                                ),


                                    ),),
                                  );
                              });
                        }else {
                          throw Exception();

                        }
                      }
                  ),
                ),
              ],
            ),
          ),
        ),
      ),

    );
  }
}
