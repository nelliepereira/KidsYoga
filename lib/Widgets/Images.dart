import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/Modals/Images.dart';
import 'package:velocity_x/velocity_x.dart';

class banner extends StatelessWidget {
 var piclist;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: VxSwiper.builder(
          itemCount: bannerImages.length,
          height: context.isMobile ? 195 : 300,
          aspectRatio: 16 / 9,
          scrollDirection: Axis.horizontal,
          enableInfiniteScroll: true,
          initialPage: 0,
          viewportFraction: 0.8,
          reverse: false,
          enlargeCenterPage: true,
          isFastScrollingEnabled: false,
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 3),
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          itemBuilder: (context, index) {
            return Stack(
              alignment: AlignmentDirectional.center,
                children: [
                  Image.network(bannerImages[index].welcomeImage,fit: BoxFit.fill,height: 500,width: 700,),
                  // Text('Meditate')

            ]
                );
          }),
    );
  }
}
