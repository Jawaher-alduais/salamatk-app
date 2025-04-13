import 'package:get/get.dart';

validInput( String val ,int min ,int max ,String type){

  if(type=="username"){
    if(!GetUtils.isUsername(val)){
      return "أسم المستخدم غير موجود";
    }
  }

  if(type=="email"){
    if(!GetUtils.isEmail(val)){
      return "الأيميل غير موجود";
    }
  }

  if(type=="phone"){
    if(!GetUtils.isPhoneNumber(val)){
      return "رقم الهاتف غير موجود";
    }
  }
  if(val.isEmpty){
    return "لايمكن أن يكون فارغ";
  }
  if(val.length < min ){
    return "القيمة ليست اقل من $min";
  }
  if(val.length > max ){
    return "القيمة ليست أكبر من $max";
  }
}