import 'dart:ui';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../Services/Services.dart';

class LocaleController extends GetxController{
  Locale? Language;

  MyServices myServices=Get.find();
  changeLang(String Langcode){
    Locale locale=Locale(Langcode);
    myServices.sharedPreferences.setString("lang",Langcode);
    Get.updateLocale(locale);
  }
@override
  void onInit() {
    String? sharedprefLang=myServices.sharedPreferences.getString('lang');
    if(sharedprefLang=="ar"){
      Language=const Locale("ar");
    }
  else  if(sharedprefLang=="en"){
      Language=const Locale("en");
    }
  else{
    Language=Locale(Get.deviceLocale!.languageCode);
    }
    super.onInit();
  }



}
