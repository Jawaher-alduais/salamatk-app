

import 'package:app01/core/Constant/Colors.dart';
import 'package:app01/core/Constant/Images.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../core/Constant/routeName.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('57'.tr, style: TextStyle(
            color: AppColor.colorwithe ,

          ),),

          backgroundColor: AppColor.c,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              CircleAvatar(
                radius: 70,
                backgroundImage:AssetImage(AppImagesAsset.profile), // رابط صورة
              ),
              SizedBox(height: 20),
              Text(
                'Slamatak Clinic',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: AppColor.c.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('58'.tr),
                        Text('SlamatakClinic@gmail.com'),
                      ],
                    ),
                    Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('14'.tr),
                        Text('774356788'),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              // ElevatedButton(
              //   onPressed: () {
              //     Get.offNamed(AppRoute.homepagescreen);
              //   },
              //   style: ElevatedButton.styleFrom(
              //     backgroundColor: AppColor.c,
              //     padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              //   ),
              //   child: Text('56'.tr,style: TextStyle(  color: AppColor.colorwithe ,),),
              // ),
            ],
          ),
        ),

    );
  }
}