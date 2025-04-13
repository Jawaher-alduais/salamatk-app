import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/Constant/Colors.dart';

class CustomButtom extends StatelessWidget {
  const CustomButtom({super.key, required this.textbuttom, required this.onpressed});
  final String textbuttom;
  final void Function()? onpressed;
  @override
  Widget build(BuildContext context) {
    return  Container(
      padding:const EdgeInsets.symmetric(vertical: 10),
      width: double.infinity,
       child:ElevatedButton(
      style: ElevatedButton.styleFrom(
          disabledBackgroundColor: AppColor.colormain2,
          padding:const EdgeInsets.all(5),
          elevation: 10,
          shadowColor: AppColor.colorGray2,
         backgroundColor: AppColor.c,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          )
      ),
      onPressed: onpressed,
           child: Text(textbuttom,style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: AppColor.colorwithe))),);
  }
}


