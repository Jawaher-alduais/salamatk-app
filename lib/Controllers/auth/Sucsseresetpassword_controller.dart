import 'package:app01/core/Constant/routeName.dart';
import 'package:get/get.dart';

abstract class SuccessResetPasswordController extends GetxController{

  goTopageLogin();

}


class SuccessResetPasswordControllerImp extends SuccessResetPasswordController{
  @override
  goTopageLogin() {
   Get.offAllNamed(AppRoute.Login);
  }
  
}