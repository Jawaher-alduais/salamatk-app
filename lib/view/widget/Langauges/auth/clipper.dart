import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/Constant/Colors.dart';

class Clipper extends StatelessWidget {
  const Clipper({super.key});

  @override
  Widget build(BuildContext context) {
    return   Stack(children: [
      ClipPath(
          clipper: ContainerClipper(),
          child: Container(
            height: 240,
            color: AppColor.c,
          )),
      ClipPath(
          clipper: ContainerClipper(),
          child: Container(
            height: 260,
            color: AppColor.c.withOpacity(0.3),
            // color: AppColor.colormain2.withOpacity(0.3),
          )),
    ],);
  }
}




class ContainerClipper extends CustomClipper<Path>{
  var paht=Path();
  @override
  Path getClip(Size size) {
    paht.lineTo(0, size.height-100);
    paht.quadraticBezierTo(size.width*0.50, size.height, size.width,size.height-100);
    paht.lineTo(size.width, 0);
    return paht;

  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) =>true;




}