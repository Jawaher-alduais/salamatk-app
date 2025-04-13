import 'package:flutter/material.dart';

import '../../core/Constant/Colors.dart';


class CommentPage extends StatelessWidget {
  const CommentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.white,
      body: ListView(
        children:[ Padding(
          padding: const EdgeInsets.only(top: 150, left: 16, right: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // صورة الطبيب
              Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    'assets/images/Dr.png', // رابط صورة الطبيب
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Text(
                "تجربتك مع الدكتورة تهاني!",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 15),
              // تصنيف النجوم
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(5, (index) {
                  return Icon(
                    Icons.star,
                    color: Colors.yellow[700],
                    size: 30,
                  );
                }),
              ),
              const SizedBox(height: 60),
              // نص "اترك تعليق"
              Text(
                "اترك تعليق",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              // حقل النص للتعليق
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                decoration: BoxDecoration(
                  color: Colors.grey[200], // لون الخلفية
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Divider(color: Colors.grey[300], thickness: 1),
                          Divider(color: Colors.grey[300], thickness: 1),
                          Divider(color: Colors.grey[300], thickness: 1),
                          Divider(color: Colors.grey[300], thickness: 1),
                        ],
                      ),
                    ),


                    TextField(
                    maxLines: 5,
                    decoration: InputDecoration(
                      hintText: "اكتب هنا",
                      border: InputBorder.none, // إزالة الحدود
                    ),
                  ),]
                ),
              ),
            ],
          ),
        ),]
      ),
      // شريط التنقل السفلي
      // bottomNavigationBar: BottomNavigationBar(
      //   items: const [
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       label: '',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.medical_services),
      //       label: '',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.chat),
      //       label: '',
      //     ),
      //     // BottomNavigationBarItem(
      //     //    icon: Icon(Icons.person, color: AppColor.c,),
      //     //   label: '',
      //     // ),
      //   ],
      // ),
    );
  }
}
