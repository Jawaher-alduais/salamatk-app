import 'package:app01/core/Services/Services.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class MyMiddelWare extends GetMiddleware{
  @override
  int? get  priority => 1; // الأكثر أهميه

  MyServices myServices = Get.find();
  @override
  RouteSettings? redirect(String? route) {
   if(myServices.sharedPreferences.getString("Languges")=="1");
  }

}