import 'package:app01/core/Constant/routeName.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';

abstract class VerfiycodeController extends GetxController{
  checCode();
  goToResetpassword();
}


class VerfiycodeControllerImp extends VerfiycodeController{


 late String verfiycode;


  @override
  checCode() {

  }

  @override
  goToResetpassword() {
    Get.offNamed(AppRoute.resetPassword);
  }

  @override
  void onInit() {



    super.onInit();
  }




}