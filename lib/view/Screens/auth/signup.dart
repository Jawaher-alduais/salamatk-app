import 'package:app01/core/Constant/Colors.dart';
import 'package:app01/core/Constant/Images.dart';
import 'package:app01/core/Localiztion/changelocal.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Controllers/auth/singup_controller.dart';
import '../../../core/Constant/routeName.dart';
import '../../../core/function/aleartexit.dart';
import '../../../core/function/validinput.dart';
import '../../widget/Langauges/auth/clipper.dart';
import '../../widget/Langauges/auth/custombuttom.dart';
import '../../widget/Langauges/auth/customtextform.dart';


class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {

    SingupControllerImp controller   =   Get.put(SingupControllerImp());
    return Scaffold(
        backgroundColor: AppColor.colorwithe,
      body:   WillPopScope(
        onWillPop:alertExitApp,
        child:  GetBuilder<SingupControllerImp>(builder: (controller)=>
         Form(
                key: controller.formState,
                child: ListView(children: [
                  const Clipper(),
                  Container(
                    padding:const EdgeInsets.symmetric(horizontal: 25),
                    child: Column(children: [
                      Text("10".tr,style: Theme.of(context).textTheme.headlineLarge!.copyWith(fontSize: 25),),
                      const   SizedBox(height: 7,),
                      Text("11".tr,style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 15,color: AppColor.colorGray2),),
                      const   SizedBox(height: 22,),

                      //  const   SizedBox(height: 10,),
                      Customtextform(hintText: '12'.tr, iconData: Icons.perm_identity,
                        isNumber: false,
                        mycontroller: controller.username,
                        valid: (val) {
                          return validInput(val!, 5, 100, "userName");

                        },
                      ),
                      const   SizedBox(height: 10,),
                      Customtextform(hintText: '13'.tr, iconData: Icons.email_outlined,
                        isNumber: false,
                        mycontroller: controller.email,
                        valid: (val) {
                          return validInput(val!, 5, 100, "email");
                        },
                      ),
                      const   SizedBox(height: 10,),
                      Customtextform(hintText: '14'.tr, iconData: Icons.phone,
                        isNumber: true,
                        mycontroller: controller.phone,
                        valid: (val) {
                          return validInput(val!, 7, 9, "phone");
                        },
                      ),
                      const   SizedBox(height: 10,),
                    GetBuilder<SingupControllerImp>(builder: (controller)=>
                      Customtextform(hintText: '15'.tr, iconData: Icons.lock_outline,
                        isNumber: true,
                        mycontroller: controller.password,
                        valid: (val) {
                          return validInput(val!, 5, 30, "password");
                        },
                        obscureText: controller.isshowpassword,
                        onTapIcon: (){
                          controller.showPassword();
                        },
                      )),

                      CustomButtom( textbuttom: '10'.tr, onpressed: () {
                        controller.SingUp();


                      },),
                      const  SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("16 ".tr ,style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: AppColor.colorGray2,fontSize: 16)),
                          InkWell(child: Text('17',style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 18,color: AppColor.c)
                          ),
                            onTap: (){
                              Get.offNamed(AppRoute.Login);

                            },
                          )
                        ],)

                    ],),
                  )
                ],),
              )
          ),
      )
    );
  }
}





