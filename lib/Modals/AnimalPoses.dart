import 'package:flutter/material.dart';

class AnimalPoses{
  String poseName ;
  String poseID;
  String poseImg;
  bool isPoseofWeek;
  String poseDesc;
  String poseLongDesc;

  AnimalPoses({this.poseID, this.poseName, this.poseImg,this.isPoseofWeek,this.poseDesc,this.poseLongDesc});

  AnimalPoses.fromJson(Map<String, dynamic> json) {
    poseName = json['PoseName'];
    poseID = json['PoseID'];
    isPoseofWeek = json['IsPoseOfWeek'];
    poseDesc = json['PoseDesc'];
    poseLongDesc = json['PoseLongDesc'];
    poseImg = json['PoseImg'];
  }

  Map<String,dynamic> toJson(){
    final Map<String,dynamic> AnimalPoses = new Map<String,dynamic>();
    AnimalPoses['PoseID']= this.poseID;
    AnimalPoses['PoseName']= this.poseName;
    AnimalPoses['PoseImg']= this.poseImg;
    AnimalPoses['PoseDesc']= this.poseDesc;
    AnimalPoses['PoseLongDesc']= this.poseLongDesc;
    AnimalPoses['IsPoseOfWeek']= this.isPoseofWeek;

  }

}