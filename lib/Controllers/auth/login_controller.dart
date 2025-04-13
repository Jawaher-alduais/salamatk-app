import 'package:app01/core/Constant/routeName.dart';
import 'package:app01/core/Services/Services.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';

import '../../core/Class/statusrequest.dart';
import '../../core/function/handlingdata.dart';
import '../../data/login.dart';


abstract class LoginController extends GetxController{
  Login();
  goToSingin();
  goToForgetpassword();

}


class LoginControllerImp extends LoginController{
  LoginData logindata = LoginData(Get.find());
  GlobalKey<FormState> formState= GlobalKey<FormState> ();

  bool isshowpassword =true;

  MyServices myservices=Get.find();
  showPassword(){
    isshowpassword = isshowpassword ==true ? false :true;
  }

  late  TextEditingController email;
  late  TextEditingController password;

  StatusRequest statusRequest= StatusRequest.none;// علشان الخطأ يروح في صفحه HandlingDataView عند تعريفها في الصفحه الlogin

  @override
  Login() async {
    if(formState.currentState!.validate()){
      statusRequest = StatusRequest.loding;
      update();
      var response = await logindata.postData(
          email.text, password.text);
      statusRequest = handlingData(response); //ثلاث قيم ترجع لي من هذه الداله
      if (StatusRequest.success == statusRequest) {
        if (response['status'] == "success") {
          //  data.addAll(response['data']);
          myservices.sharedPreferences.setString("id", response['data']['user_id']);
          myservices.sharedPreferences.setString("username", response['data']['user_name']);
          myservices.sharedPreferences.setString("email", response['data']['user_email']);
          myservices.sharedPreferences.setString("phone", response['data']['user_phone']);
        //  myservices.sharedPreferences.setString("step", "2");
          Get.offNamed(AppRoute.homepage, arguments: {
            "email": email.text
          });
        } else {
          Get.defaultDialog(title: "تحذير",middleText: "البريد ورقم الرمز موجود");
          statusRequest = StatusRequest.failuer; //لايوجد بيانات
        }
      }
      update();


    }  else {}
  }


  @override
  goToSingin() {
    Get.offNamed(AppRoute.signUp);
  }

  @override
  void onInit() { // يفضل اسناد القيم بداخل هذه الداله
    email =TextEditingController();
    password=TextEditingController();
    super.onInit();
  }
  @override
  void dispose() { //عمليه تاكيد
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  goToForgetpassword() {
    Get.offNamed(AppRoute.forgetPassword);

  }



}