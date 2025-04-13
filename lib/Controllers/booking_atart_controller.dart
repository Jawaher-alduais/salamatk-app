import 'package:app01/core/Constant/routeName.dart';
import 'package:app01/core/Services/Services.dart';
import 'package:app01/data/booking_alart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';

import '../../core/Class/statusrequest.dart';
import '../../core/function/handlingdata.dart';
import '../../data/login.dart';


abstract class BookingAtartController extends GetxController{
  BookingAlart();


}


class BookingAtartControllerIm extends BookingAtartController{
  LoginData logindata = LoginData(Get.find());
  GlobalKey<FormState> formState= GlobalKey<FormState> ();


  MyServices myservices=Get.find();


  late  TextEditingController patients_name;
  late  TextEditingController bill_num;

  StatusRequest statusRequest= StatusRequest.none;// علشان الخطأ يروح في صفحه HandlingDataView عند تعريفها في الصفحه الlogin

  @override
  BookingAlart() async {
    if (formState.currentState!.validate()) {
      statusRequest = StatusRequest.loding;
      update();
      var response = await BookingAlart().postData(
       patients_name.text,
        int.tryParse(bill_num.text) ?? 0,);


      statusRequest = handlingData(response);
      var responseBody = response.fold((l) => null, (r) => r);

      print("🔥 response body: $responseBody");

      if (statusRequest == StatusRequest.success) {
        if (responseBody != null && responseBody['status'] == "success") {
          Get.offNamed(AppRoute.sucsseSingUp);
        } else {
          Get.offNamed(AppRoute.sucsseSingUp);
          statusRequest = StatusRequest.failuer;
        }
      }
      update();


    }  else {}
  }




  @override
  void onInit() { // يفضل اسناد القيم بداخل هذه الداله
    patients_name =TextEditingController();
    bill_num=TextEditingController();
    super.onInit();
  }
  @override
  void dispose() { //عمليه تاكيد
    patients_name.dispose();
    bill_num.dispose();
    super.dispose();
  }





}