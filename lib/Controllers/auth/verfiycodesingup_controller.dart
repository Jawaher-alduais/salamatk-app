import 'package:app01/core/Constant/routeName.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';

abstract class VerfiycodeSignUpController extends GetxController{
  checCode();
  goTosucsseSingUp();
}


class VerfiycodeSignUpControllerImp extends VerfiycodeSignUpController{


  late String verfiycode;


  @override
  checCode() {

  }

  @override
  goTosucsseSingUp() {
    Get.offNamed(AppRoute.sucsseSingUp);
  }

  @override
  void onInit() {



    super.onInit();
  }




}