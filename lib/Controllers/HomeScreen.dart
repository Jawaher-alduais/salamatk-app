import 'package:app01/view/Screens/doctor_information.dart';
import 'package:app01/view/Screens/homepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import '../view/Screens/booking_page.dart';

import '../view/Screens/profile.dart';

 class HomeScreenIm extends GetxController{
  var selectIndex=0.obs;
  void changeIndex(index){
    selectIndex.value=index;
  }
}












