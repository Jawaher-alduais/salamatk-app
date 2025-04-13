import 'package:app01/core/Constant/routeName.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';

abstract class ResetpasswordController extends GetxController{
  resetPassword();
  goToScusseResetpassword();
}


class ResetpasswordControllerImp extends ResetpasswordController{

  bool isshowpassword =true;
  showPassword(){
    isshowpassword = isshowpassword ==true ? false :true;
  }

  late  TextEditingController password; //تحقق من الحقل
  late  TextEditingController repassword;


  @override
  resetPassword() {

  }

  @override
  goToScusseResetpassword() {
    Get.offNamed(AppRoute.sucsseResetPassword);
  }

  @override
  void onInit() {

    password =TextEditingController();
    repassword=TextEditingController();

    super.onInit();
  }
  @override
  void dispose() { //عمليه تاكيد

    password.dispose();
    repassword.dispose();
    super.dispose();
  }



}