import 'package:app01/core/Constant/Colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../Controllers/auth/Sucsseresetpassword_controller.dart';
import '../../../../Controllers/auth/singup_controller.dart';

import '../../../widget/Langauges/auth/custombuttom.dart';


class Scussepassword extends StatelessWidget {
  const Scussepassword({super.key});

  @override
  Widget build(BuildContext context) {
    SuccessResetPasswordControllerImp controller   =   Get.put(SuccessResetPasswordControllerImp());
    return Scaffold(
      // appBar: AppBar(
      //   centerTitle: true,
      //   elevation: 0.0,
      //   title: Text("تم نجاح العملية",style: Theme.of(context).textTheme.headlineLarge ),
      //
      // ),
      body: Container(
        padding:const EdgeInsets.all(15),
        child: Column(children: [
          SizedBox(height: 110,),
          Text("تم نجاح العملية",style: Theme.of(context).textTheme.headlineLarge ),
          const  Icon(Icons.check_circle_outline_outlined,size: 200,color: AppColor.colormain2,),
          Text("تمت عملية أنشاء حساب بنجاح".tr,style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 18,color: AppColor.colorGray2),),
          const  Spacer(),
          CustomButtom( textbuttom: 'تسجيل الدخول', onpressed: () {
            controller.goTopageLogin();
          },),
          const  SizedBox(height: 30,)
        ],),
      ),
    );
  }
}
