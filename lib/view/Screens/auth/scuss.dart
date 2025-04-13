import 'package:app01/core/Constant/Colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../Controllers/auth/singup_controller.dart';
import '../../../Controllers/auth/sucssesingup_controller.dart';
import '../../../core/Constant/routeName.dart';
import '../../widget/Langauges/auth/custombuttom.dart';

class SucsseSingUp extends StatelessWidget {
  const SucsseSingUp({super.key});

  @override
  Widget build(BuildContext context) {
    SuccessSignUpdControllerImp controller   =   Get.put(SuccessSignUpdControllerImp());
    return Scaffold(
      backgroundColor:Colors.white,
      appBar:  PreferredSize(
          preferredSize: Size.fromHeight(5.0), // تحديد ارتفاع AppBar
          child: AppBar(
            backgroundColor: AppColor.c,)),
    body: Container(
      padding:const EdgeInsets.all(15),
      child: Column(
        children: [
          SizedBox(height: 110,),
        Text("54".tr,style: Theme.of(context).textTheme.headlineLarge ),
      const  Icon(Icons.check_circle_outline_outlined,size: 200,color: AppColor.c,),
        Text("55".tr,style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 18,color: AppColor.colorGray2),),
        const  Spacer(),
        CustomButtom( textbuttom: '56'.tr, onpressed: () {
          Get.offNamed(AppRoute.homepage);
        },),
        const  SizedBox(height: 30,)
      ],),
    ),
    );
  }
}
