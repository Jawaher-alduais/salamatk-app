import 'package:app01/core/Constant/Colors.dart';
import 'package:app01/core/Constant/Images.dart';
import 'package:app01/core/Localiztion/changelocal.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../Controllers/auth/forgetpassword_controller.dart';
import '../../../../Controllers/auth/login_controller.dart';
import '../../../../Controllers/auth/resetpassword_controller.dart';
import '../../../../core/function/validinput.dart';
import '../../../widget/Langauges/auth/clipper.dart';
import '../../../widget/Langauges/auth/custombuttom.dart';
import '../../../widget/Langauges/auth/customtextform.dart';

class resetpassword extends StatelessWidget {
  const resetpassword({super.key});

  @override
  Widget build(BuildContext context) {
    ResetpasswordControllerImp controller   =   Get.put(ResetpasswordControllerImp());
    return Scaffold(
      body:  Expanded(child: ListView(children: [
        const Clipper(),
        Container(
          padding:const EdgeInsets.symmetric(horizontal: 25),
          child: Column(children: [
            Text("أعادة تعيين كلمه المرور".tr,style: Theme.of(context).textTheme.headlineLarge,),
            const   SizedBox(height: 20),
            Text("يمكنك أدخال كلمة سر جديدة ".tr,style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 18,color: AppColor.colorGray2),),
            const   SizedBox(height: 20),

          GetBuilder<ResetpasswordControllerImp>(builder: (controller)=>
            Customtextform(hintText: 'أدخل الرمز الجديد'.tr, iconData: Icons.lock_outline,
              isNumber: false,
              mycontroller: controller.password,
              valid: (val) {
                return validInput(val!, 5, 30, "password");
              },
              obscureText: controller.isshowpassword,
              onTapIcon: (){
                controller.showPassword();
              },
            ) ),
            const   SizedBox(height: 10,),
          GetBuilder<ResetpasswordControllerImp>(builder: (controller)=>
            Customtextform(hintText: 'أعادة كلمة السر'.tr, iconData: Icons.lock_outline,
              isNumber: false,
              mycontroller: controller.repassword,
              valid: (val) {
                return validInput(val!, 5, 30, "repassword");
              },
              obscureText: controller.isshowpassword,
              onTapIcon: (){
                controller.showPassword();
              },
            )),

              CustomButtom( textbuttom: 'حفظ', onpressed: () {
                controller.goToScusseResetpassword();
              },),
            const  SizedBox(height: 20,),


          ],),
        )
      ],)
      ),
    );
  }
}





