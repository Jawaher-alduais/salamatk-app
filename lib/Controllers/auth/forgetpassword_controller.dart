import 'package:app01/core/Constant/routeName.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';

abstract class ForgetpasswordController extends GetxController{
  checkemail();
  goToVerfiyCode();
}


class ForgetpasswordControllerImp extends ForgetpasswordController{

  late  TextEditingController email;



  @override
  checkemail() {

  }

  @override
  goToVerfiyCode() {
    Get.offNamed(AppRoute.verfiyCode);
  }

  @override
  void onInit() {

    email =TextEditingController();


    super.onInit();
  }
  @override
  void dispose() { //عمليه تاكيد

    email.dispose();

    super.dispose();
  }



}