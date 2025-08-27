import 'package:app01/core/Constant/routeName.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../../core/Class/statusrequest.dart';
import '../../core/function/handlingdata.dart';
import '../../data/signup.dart';
import '../core/Services/Services.dart';
import '../data/booking1.dart';
import 'auth/booking_controller.dart';


abstract class Booking1Controllar extends GetxController{
  Booking1();

}


class Booking1ControllarImp extends Booking1Controllar {
  Booking1Data booking1Data = Booking1Data(Get.find());
  GlobalKey<FormState> formState = GlobalKey<FormState>();

  MyServices myservices=Get.find();


  late TextEditingController patientName;
  late TextEditingController age_p;
  late TextEditingController phone_p;
  late TextEditingController address_p;
  late TextEditingController chronicdiseases;
  late TextEditingController sickcondition;
  late TextEditingController reservdate;
  late String selectedSickCondition="";
  // late TextEditingController patientNames;
  late TextEditingController num_bill;

  StatusRequest statusRequest=StatusRequest.none;

  List data = [];


  @override
  Booking1() async {
    if (formState.currentState!.validate()) {
      statusRequest = StatusRequest.loding;
      update();


      String paymentMethod = Get.find<PaymentController>().selectedPaymentMethod.value;
      int billNumber = paymentMethod == "wallet"
          ? int.tryParse(num_bill.text) ?? 0
          : 0;

      print("🚀 طريقة الدفع: $paymentMethod");
      print("📩 رقم الحوالة المرسل: $billNumber");





      var response = await booking1Data.postData(
        patientName.text,
        int.tryParse(age_p.text) ?? 0,
        int.tryParse(phone_p.text) ?? 0,
        address_p.text,
        chronicdiseases.text,
        selectedSickCondition,
        reservdate.text,
        // patientNames.text,
        int.tryParse(num_bill.text) ?? 0,
       );

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


      update();
    }

  }
  }



  @override
  goToSingIn() {
    Get.offNamed(AppRoute.Login);
  }

  @override
  void onInit() {
    patientName=TextEditingController();
    age_p =TextEditingController();
    phone_p=TextEditingController();
    address_p=TextEditingController();
    chronicdiseases=TextEditingController();
    sickcondition=TextEditingController();
    reservdate=TextEditingController();
    num_bill=TextEditingController();
    selectedSickCondition = '';
    super.onInit();
  }
  @override
  void dispose() { //عمليه تاكيد
    patientName.dispose();
    age_p.dispose();
    phone_p.dispose();
    address_p.dispose();
    sickcondition.dispose();
    reservdate.dispose();
    num_bill.dispose();
    super.dispose();
  }

  @override
  SingUp() {
    // TODO: implement SingUp
    throw UnimplementedError();
  }

}


