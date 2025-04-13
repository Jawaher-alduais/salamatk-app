import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/Constant/Colors.dart';

class Customtextform extends StatelessWidget {
  const Customtextform({super.key,
    required this.hintText,
     this.iconData,
    required  this.mycontroller,
    required this.valid, required this.isNumber,
  this.obscureText, this.onTapIcon});

final String hintText;
final IconData? iconData;
final TextEditingController? mycontroller;
final String? Function(String?) valid;
final bool isNumber;
 final bool? obscureText;
 final void Function()? onTapIcon;


  @override
  Widget build(BuildContext context) {
    return   Container(
      margin: EdgeInsets.only(bottom: 20),
      child: TextFormField(
        obscureText: obscureText ==null || obscureText == false ? false :true,
        keyboardType: isNumber ? TextInputType.numberWithOptions(decimal: true): TextInputType.text,
        validator: valid,
        controller: mycontroller,
          decoration: InputDecoration(
            filled:true,
            hintText: hintText,
            hintStyle: TextStyle(fontSize: 14,color: AppColor.colorGray2),
            fillColor: AppColor.c3,
              //fillColor: AppColor.c3.withOpacity(0.5),
            suffixIcon: InkWell(child: Icon(iconData,color: AppColor.colorGray2),onTap: onTapIcon,),
            contentPadding: EdgeInsets.symmetric(vertical: 5,horizontal: 20),
            border: OutlineInputBorder(
               borderRadius:   BorderRadius.circular(8),
               borderSide: BorderSide(color: AppColor.colorGray2),
            ),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(color: AppColor.c4)
               // borderSide: BorderSide(color: AppColor.c4.withOpacity(0.5))

            ),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),//12
                borderSide: BorderSide(color: AppColor.colorGray.withOpacity(0.5))
            )

          )),
    );
  }
}
