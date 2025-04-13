import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/Constant/Colors.dart';

class CustomtextfromBill extends StatelessWidget {
  const CustomtextfromBill({super.key, required this.hintText,  this.mycontroller, required this.valid});

  final String hintText;

  final TextEditingController? mycontroller;
  final String? Function(String?) valid;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TextField(
        decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(fontSize: 14, color: AppColor.colorGray2),
            enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: AppColor.c4)),
            focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                    color: AppColor.colorGray.withOpacity(0.5)))
        ),
      ),

    );
  }
}
