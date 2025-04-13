import 'package:get/get.dart';
import 'Controllers/auth/singup_controller.dart';

class MyBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(()=>SingupControllerImp(), fenix: true); //fenix علشان استعلمت معاها binding
  }
  
}