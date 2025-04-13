import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../core/Constant/routeName.dart';

void showBottomSheet(){
  Get.bottomSheet(
      Container(padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("المحادثات",style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold),),
            SizedBox(height: 10,),
            InkWell(child: Text("أستشارة أولية"), onTap: (){ Get.offNamed(AppRoute.chat_screen);},),
            SizedBox(height: 5,),
            InkWell(child: Text("أسأل طبيبك"), onTap: (){ Get.offNamed(AppRoute.chat_screen);},),
          ],
        ),
      )
  );
}