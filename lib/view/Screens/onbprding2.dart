import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../core/Constant/Images.dart';
import '../../core/Constant/routeName.dart';
import '../widget/Langauges/custombotom.dart';

class OnBrding2 extends StatelessWidget {

  const OnBrding2({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // صورة
            Image(image: AssetImage(AppImagesAsset.onbording2),height: 300,),
            const SizedBox(height: 20), // مسافة بين العناصر
            // عنوان
            const Text(
              'أستكشف ميزاتنا المذهلة',
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
                'نقدم لك مجموعه مذهله من الأدوات لمساعدتك في تحسين تجربتك.',
                style: TextStyle(fontSize: 13, color: Colors.grey),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 40), // مسافة بين العناصر
            // زر المتابعة
            Custombotom(TextButtom: "التالي", onpresed: (){
              Get.offNamed(AppRoute.onpording3);
            },)
          ],
        ),
      ),
    );
  }
}


