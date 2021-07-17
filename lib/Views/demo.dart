import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';


class Demopg extends StatefulWidget {
  

  @override
  _DemopgState createState() => _DemopgState();
}

class _DemopgState extends State<Demopg> {
  final ref = FirebaseFirestore.instance.collection('AnimalYogaPoses');
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        leading: BackButton(
            color: Colors.white),
        title: Center(child: Text("Page under construction",style: TextStyle(color: Colors.white),)),),

      body: Center(child: Image.network('https://image.freepik.com/free-vector/silhouette-female-yoga-pose-against-mandala-design_1048-13082.jpg'))
    );
  }
}
