import 'package:app01/core/Constant/routeName.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../../core/Class/statusrequest.dart';
import '../../core/function/handlingdata.dart';
import '../../data/signup.dart';


abstract class SingupController extends GetxController{
  SingUp();
  goToSingIn();
}


class SingupControllerImp extends SingupController {
  SignUpData signUpData = SignUpData(Get.find());
  GlobalKey<FormState> formState = GlobalKey<FormState>();


  bool isshowpassword = true;

  showPassword() {
    isshowpassword = isshowpassword == true ? false : true;
  }

  late TextEditingController username;
  late TextEditingController email;
  late TextEditingController phone;
  late TextEditingController password;

  StatusRequest statusRequest=StatusRequest.none;

  List data = [];


  @override
  SingUp() async {
    if (formState.currentState!.validate()) {
      statusRequest = StatusRequest.loding;
      update();
      var response = await signUpData.postData(
          username.text, password.text, email.text,  int.tryParse(phone.text) ?? 0,);


      statusRequest = handlingData(response);
      var responseBody = response.fold((l) => null, (r) => r);

      print("🔥 response body: $responseBody");

      if (statusRequest == StatusRequest.success) {
        if (responseBody != null && responseBody['status'] == "success") {
          Get.offNamed(AppRoute.homepage);
        } else {
        //  Get.offNamed(AppRoute.homepagescreen);
          statusRequest = StatusRequest.failuer;
        }
      }
      update();


    }  else {}
  }





  @override
  goToSingIn() {
    Get.offNamed(AppRoute.Login);
  }

  @override
  void onInit() {
    username=TextEditingController();
    email =TextEditingController();
    phone=TextEditingController();
    password=TextEditingController();

    super.onInit();
  }
  @override
  void dispose() { //عمليه تاكيد
    username.dispose();
    email.dispose();
    phone.dispose();
    password.dispose();
    super.dispose();
  }

}


