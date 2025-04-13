import 'package:app01/core/Constant/Colors.dart';
import 'package:app01/core/Constant/Images.dart';
import 'package:app01/core/Constant/routeName.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../core/Localiztion/changelocal.dart';
import '../widget/Langauges/custombotom.dart';
class Languages extends GetView<LocaleController> {
  const Languages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:Colors.white,
      body:
        Container(
         child:
         Container(
            padding: EdgeInsets.symmetric(vertical: 100),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                //  padding: EdgeInsets.only(left: 25),
                  child: Image.asset(AppImagesAsset.ImageLanguge,width: 400,height: 300,)
                  ,),
                SizedBox(height: 20,),
                Container(child: Text("أختار اللغة".tr,style: Theme.of(context).textTheme.headlineLarge!.copyWith(color: AppColor.colorGray2),),),
                Custombotom(TextButtom:"العربية".tr,onpresed:(){
                  controller.changeLang('ar');
                  Get.offNamed(AppRoute.Login);
                }),
                Custombotom(TextButtom:"الأنجليزية",onpresed:(){
                  controller.changeLang('en');
                  Get.offNamed(AppRoute.Login);
                }),

              ],
            ),
          ),

        )
    );
  }
}



