import 'package:app01/core/Constant/Colors.dart';
import 'package:app01/core/Constant/Images.dart';
import 'package:app01/core/Localiztion/changelocal.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../Controllers/auth/forgetpassword_controller.dart';
import '../../../../Controllers/auth/login_controller.dart';
import '../../../../core/function/validinput.dart';
import '../../../widget/Langauges/auth/clipper.dart';
import '../../../widget/Langauges/auth/custombuttom.dart';
import '../../../widget/Langauges/auth/customtextform.dart';

class Forgetpassword extends StatelessWidget {
  const Forgetpassword({super.key});

  @override
  Widget build(BuildContext context) {
    ForgetpasswordControllerImp controller   =   Get.put(ForgetpasswordControllerImp());
    return Scaffold(
      body:  Expanded(child: ListView(children: [
        const Clipper(),
        Container(
          padding:const EdgeInsets.symmetric(horizontal: 25),
          child: Column(children: [
            Text("تحقق من كلمة السر".tr,style: Theme.of(context).textTheme.headlineLarge,),
            const   SizedBox(height: 20),

            Text("اذا نسيت كلمة السر تحقق منها عن طريق الايميل".tr,style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 18,color: AppColor.colorGray2),),
            const   SizedBox(height: 20),
            Customtextform(hintText: 'أدخل الأيميل'.tr, iconData: Icons.email_outlined,
              isNumber: false,
              mycontroller: controller.email,
              valid: (val) {
                return validInput(val!, 5, 100, "email");
              },
            ),
            const   SizedBox(height: 10,),


             CustomButtom( textbuttom: 'تحقق من كلمة السر', onpressed: () {
              controller.goToVerfiyCode();
            },),
            const  SizedBox(height: 20,),
           

          ],),
        )
      ],)
      ),
    );
  }
}





