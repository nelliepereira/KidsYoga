import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/Views/demo.dart';
import 'package:velocity_x/velocity_x.dart';
import 'dart:ui';


class drawermenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          DrawerHeader(
              decoration: BoxDecoration(color: Colors.lightGreen

              ),
              child: Container(child:
              Center(
                child: Row(
                children: [
                  Icon(Icons.face_outlined,color: Colors.white,),
                  15.widthBox,
                  Text('Little Yogi', style: TextStyle(fontSize: 32, color: Colors.white),),
                ],
                  ),
              ))),
          ListTile(
            title: Padding(
              padding: const EdgeInsets.only(left:8, right: 8),
              child: InkWell(
                splashColor: Colors.lightGreen,
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_) => Demopg()));
                },
                child: Container(
                  height: 40,
                  decoration: BoxDecoration(
                      border:Border(bottom: BorderSide(color: Colors.grey ))
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.person,color: Colors.lightGreen),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                            child: Text('Profile', style: TextStyle(fontSize: 15),),
                          ),
                        ],
                      ),
                      Icon(Icons.arrow_right,color: Colors.lightGreen),
                    ],
                  ),
                ),
              ),
            ),
          ),
          ListTile(
            title: Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 0),
              child: InkWell(
                splashColor: Colors.lightGreen,
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_) => Demopg()));
                },
                child: Container(
                  height: 40,
                  decoration: BoxDecoration(
                      border:Border(bottom: BorderSide(color: Colors.grey ))
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.notifications,color: Colors.lightGreen),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Animal Poses', style: TextStyle(fontSize: 15),),
                          ),
                        ],
                      ),
                      Icon(Icons.arrow_right,color: Colors.lightGreen),
                    ],
                  ),
                ),
              ),
            ),
          ),
          ListTile(
            title: Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 0),
              child: InkWell(
                splashColor: Colors.lightGreen,
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_) => Demopg()));
                },
                child: Container(
                  height: 40,
                  decoration: BoxDecoration(
                      border:Border(bottom: BorderSide(color: Colors.grey ))
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.settings,color: Colors.lightGreen),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Settings', style: TextStyle(fontSize: 15),),
                          ),
                        ],
                      ),
                      Icon(Icons.arrow_right,color: Colors.lightGreen),
                    ],
                  ),
                ),
              ),
            ),
          ),
          ListTile(
            title: Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 0),
              child: InkWell(
                splashColor: Colors.lightGreen,

                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_) => Demopg()));
                },
                child: Container(
                  height: 40,
                  decoration: BoxDecoration(
                      border:Border(bottom: BorderSide(color: Colors.grey ))
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.business_center_rounded,color: Colors.lightGreen),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('About Us', style: TextStyle(fontSize: 15),),
                          ),
                        ],
                      ),
                      Icon(Icons.arrow_right,color: Colors.lightGreen),
                    ],
                  ),
                ),
              ),
            ),
          ),
          ListTile(
            title: Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 0),
              child: InkWell(
                splashColor: Colors.lightGreen,
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_) => Demopg()));
                },
                child: Container(
                  height: 40,
                  decoration: BoxDecoration(
                      border:Border(bottom: BorderSide(color: Colors.grey ))
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.logout,color: Colors.lightGreen),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Logout', style: TextStyle(fontSize: 15),),
                          ),
                        ],
                      ),
                      Icon(Icons.arrow_right,color: Colors.lightGreen),
                    ],
                  ),
                ),
              ),
            ),
          ),


        ],
      ),
    );
  }
}