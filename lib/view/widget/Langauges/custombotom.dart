import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../core/Constant/Colors.dart';

class Custombotom extends StatelessWidget {
  const Custombotom({super.key, required this.TextButtom, this.onpresed});
final String TextButtom;
final void Function()? onpresed;
  @override
  Widget build(BuildContext context) {
    return  Container(
        padding: EdgeInsets.symmetric(horizontal: 50,vertical: 8),
        width: double.infinity,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(5),
               // backgroundColor: AppColor.colormain2,
                backgroundColor: AppColor.c,
                //elevation: 10,
                shadowColor: AppColor.colorGray2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                )
            ),
            onPressed: onpresed,
            child:Text(TextButtom,style: TextStyle(fontWeight: FontWeight.bold, color: AppColor.colorwithe, fontSize: 20),) ));

   // child:Text(TextButtom,style: Theme.of(context).textTheme.bodyLarge,),
    //    ));
  }
}
