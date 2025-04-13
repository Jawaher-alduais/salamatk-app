
import 'package:flutter/material.dart';

import '../../../core/Constant/Colors.dart';

class Customnavgetor extends StatelessWidget {
  const Customnavgetor({super.key, required this.onpresed,  required this.icondata, this.active});
  final void Function() onpresed;

  final IconData icondata;
  final bool? active;

  @override
  Widget build(BuildContext context) {
    return   MaterialButton(
      onPressed: onpresed,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icondata, color: active==true ?AppColor.colormain: AppColor.colorBlack,),

        ],),
    );
  }
}
