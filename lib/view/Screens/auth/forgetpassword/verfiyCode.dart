import 'package:app01/core/Constant/Colors.dart';
import 'package:app01/core/Constant/Images.dart';
import 'package:app01/core/Localiztion/changelocal.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import '../../../../Controllers/auth/VerfiyCode_controller.dart';
import '../../../../Controllers/auth/forgetpassword_controller.dart';
import '../../../../Controllers/auth/login_controller.dart';
import '../../../widget/Langauges/auth/clipper.dart';
import '../../../widget/Langauges/auth/custombuttom.dart';
import '../../../widget/Langauges/auth/customtextform.dart';

class VerfiyCode extends StatelessWidget {
  const VerfiyCode({super.key});

  @override
  Widget build(BuildContext context) {
    VerfiycodeControllerImp controller   =   Get.put(VerfiycodeControllerImp());
    return Scaffold(
      body:  Expanded(child: ListView(children: [
        const Clipper(),
        Container(
          padding:const EdgeInsets.symmetric(horizontal: 25),
          child: Column(children: [
            Text("تحقق من الكود".tr,style: Theme.of(context).textTheme.headlineLarge,),
            const   SizedBox(height: 20),
            Text("أدخل الكود الذي وصل اليك".tr,style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 18,color: AppColor.colorGray2),),
            const   SizedBox(height: 20),
            OtpTextField(
                fieldWidth: 50.0,
                borderRadius: BorderRadius.circular(20),
                numberOfFields: 5,
                borderColor: Color(0xFF512DA8),
                showFieldAsBox: true,

                onCodeChanged: (String code) {

                },

                onSubmit: (String verificationCode){
                   controller.goToResetpassword();
                }

              // end onSubmit
            ),
    


          ],),
        )
      ],)
      ),
    );
  }
}





