import 'package:app01/core/Constant/routeName.dart';
import 'package:get/get.dart';

abstract class SuccessSignUpdController extends GetxController{

  goTopageLogin();

}


class SuccessSignUpdControllerImp extends SuccessSignUpdController{
  @override
  goTopageLogin() {
    Get.offAllNamed(AppRoute.Login);
  }

}