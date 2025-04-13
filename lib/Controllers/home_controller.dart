import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

abstract class HomeController extends GetxController{
goToPage(Widget page);

nextImage();
}


class HomeControllerImp extends HomeController {

  var currentImageIndex = 0;

  final List<String> images = [
   'assets/images/clean.png'
    'assets/images/Doc.png'
  ];


  @override
  goToPage(Widget page) {
    Get.to(() => page);

  }

  @override
  nextImage() {
    currentImageIndex=
        (currentImageIndex + 1) % images.length;
  }
  @override
  void onInit() {
    super.onInit();
    Timer.periodic(Duration(seconds: 2), (timer) {
      nextImage();
    });
  }

}