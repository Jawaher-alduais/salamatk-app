import 'dart:ui';

import 'package:app01/core/Constant/Colors.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

abstract class ChangeButtom extends GetxController{

  changeButtom();

}
class ChangeButtomImp extends ChangeButtom{
late  Color Changecolor;
  @override
  changeButtom() {
    Changecolor=AppColor.colormain3;
   update();
  }

}