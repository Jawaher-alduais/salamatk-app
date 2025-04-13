import 'package:app01/core/Constant/Colors.dart';
import 'package:app01/core/Constant/Images.dart';
import 'package:app01/core/Constant/routeName.dart';
import 'package:app01/core/Localiztion/changelocal.dart';
import 'package:app01/core/function/validinput.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../Controllers/auth/login_controller.dart';
import '../../../core/Class/curdRequest.dart';
import '../../../core/function/aleartexit.dart';
import '../../widget/Langauges/auth/clipper.dart';
import '../../widget/Langauges/auth/custombuttom.dart';
import '../../widget/Langauges/auth/customtextform.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(Crud());
    LoginControllerImp controller   =   Get.put(LoginControllerImp());
    return Scaffold(
        backgroundColor: AppColor.colorwithe,
      body:    WillPopScope(
        onWillPop:alertExitApp,
        child:   Expanded(
            child: Form(
                key: controller.formState,
                child: ListView(children: [
                  const Clipper(),
                  Container(
                    padding:const EdgeInsets.symmetric(horizontal: 25),
                    child: Column(children: [
                      Text("4".tr,style: Theme.of(context).textTheme.headlineLarge!.copyWith(fontSize: 25),),
                      const   SizedBox(height: 7,),
                      Text("7".tr,style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 15,color: AppColor.colorGray2),),
                      const   SizedBox(height: 22,),


                      Customtextform(hintText: '5'.tr, iconData: Icons.email_outlined,
                        isNumber: false,
                        mycontroller: controller.email,
                        valid: (val) {
                          return validInput(val!, 5, 100, "email");
                        },
                      ),
                      const   SizedBox(height: 10,),
                    GetBuilder<LoginControllerImp>(builder: (controller)=>
                     Customtextform(hintText: '6'.tr, iconData: Icons.lock_outline,
                          isNumber: true,
                          mycontroller: controller.password,
                          valid: (val) {
                            return validInput(val!, 5, 30, "password");
                          },
                       obscureText: controller.isshowpassword,
                          onTapIcon: (){
                            controller.showPassword();
                          },
                        ),
                    ),

                      CustomButtom( textbuttom: '4'.tr, onpressed: () {
                        Get.offNamed(AppRoute.homepage);
                      //  controller.Login();
                      },),
                      const  SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("8".tr ,style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: AppColor.colorGray2,fontSize: 16)),
                          InkWell(child: Text('9'.tr,style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 18,color: AppColor.c),
                          ),
                            onTap: (){
                              controller.goToSingin();
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





