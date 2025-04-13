import 'package:app01/core/Constant/Colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Homepageswidget extends StatelessWidget {
  const Homepageswidget({super.key, required this.iconData, required this.title});
  final IconData iconData;
  final String title;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child:  Container(
        width:100,
        height: 80,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(35),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: AppColor.colorGray2,
                // spreadRadius: 0.1,
                // offset: Offset(-1,-1),
                blurRadius: 4,
              )
            ]
        ),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 60,
              width: 60,
              child: CircleAvatar(
                backgroundColor: Color(0xffD6E8F4),
                radius:100,
                child: Icon(iconData!,size: 35,color: AppColor.colorBlack.withOpacity(0.7),),
              ),),
            Text(title!,style: TextStyle(fontSize: 14))
          ],),

      ),


    );;
  }
}
