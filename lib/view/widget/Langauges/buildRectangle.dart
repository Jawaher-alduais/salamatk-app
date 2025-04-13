
import 'dart:ui';

import 'package:app01/core/Constant/Colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget buildRectangle({required Color color, required String text}) {
  return Container(
    width: 150,
    height: 50,
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(15),
      boxShadow: [
        BoxShadow(
          color: AppColor.colorGray2,
          blurRadius: 10,
          offset: Offset(0, 4), // تأثير الظل
        ),
      ],
    ),
    child: Center(
      child: Text(
        text,
        style: TextStyle(
          color: AppColor.colorBlack,
          fontSize: 15,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}
