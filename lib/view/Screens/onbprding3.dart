import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../core/Constant/Images.dart';
import '../../core/Constant/routeName.dart';
import '../widget/Langauges/custombotom.dart';

class OnBrding3 extends StatelessWidget {

 const OnBrding3({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // صورة
            Image(image: AssetImage(AppImagesAsset.onbording3),height: 300,),
            const SizedBox(height: 20), // مسافة بين العناصر
            // عنوان
            const Text(
              'أبدأ رحلتك معنا',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10), // مسافة بين العناصر
            // وصف
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: const Text(
                'أنضم ألينا الأن وأستفد من جميع الميزات المتاحة لتحقيق أهدافك.',
                style: TextStyle(fontSize: 13, color: Colors.grey),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 40), // مسافة بين العناصر
            // زر المتابعة
            Custombotom(TextButtom: "التالي", onpresed: (){
              Get.offNamed(AppRoute.langauge);
            },)
          ],
        ),
      ),
    );
  }
}


