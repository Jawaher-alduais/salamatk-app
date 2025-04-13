import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Constant/Colors.dart';

 Future<bool> alertExitApp(){

  Get.defaultDialog(
    title: "تنبيه",
        middleText: "هل تريد الخروج من التطبيق",
    actions: [
 ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColor.colormain2,
          elevation: 10,
        ),
          onPressed: (){
        exit(0);
      },
          child: Text('Yes',style: TextStyle(color: AppColor.colorBlack),)),
 ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColor.colormain2,
            padding:const EdgeInsets.all(10),
            elevation: 10,
          ),
          onPressed: (){
        Get.back();
      },
          child: Text('No',style: TextStyle(color: AppColor.colorBlack))),
    ]
  );
  return Future.value(true);

}