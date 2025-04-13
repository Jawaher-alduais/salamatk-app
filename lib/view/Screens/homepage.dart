import 'package:app01/core/Constant/Colors.dart';
import 'package:app01/view/Screens/auth/Home_chat.dart';
import 'package:app01/view/Screens/auth/chat.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../core/Constant/routeName.dart';
import '../widget/Langauges/homepageswidget.dart';
import 'Profile.dart';
import 'doctor_information.dart';
import 'homepagescreen.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

//https://faq2dfdgif4pgbjax25m9r.streamlit.app

class _HomePageState extends State<HomePage> {
  int selectIndex = 0;

  List<Widget> listpage = [
    Homepagescreen(),
    DoctorInformation(),
    Profile(),
    Homepagescreen(),
  ];

  void showChatBottomSheet() {
    Get.bottomSheet(
      Container(
        padding: EdgeInsets.symmetric(vertical:30,horizontal: 106),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "59".tr,
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            InkWell(
              child: Text("60".tr,style: TextStyle(color: AppColor.c),),
              onTap: () async {
                const url = 'https://faq2dfdgjf4pgbjax25m9r.streamlit.app'; // استبدل هذا بالرابط المطلوب
                if (await canLaunch(url)) {
                  await launch(url);
                } else {
                  throw 'لا يمكن فتح الرابط $url';
                }
              },
            ),
            SizedBox(height: 10),
            InkWell(
              child: Text("61".tr,style: TextStyle(color: AppColor.c)),
              onTap: () {
                Get.offNamed(AppRoute.homechat);
              },
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Transform.translate(
        offset: Offset(0, -5),
        child: FloatingActionButton(
          shape: CircleBorder(),
          backgroundColor: AppColor.c,
          onPressed: () {
            Get.toNamed(AppRoute.bookinfpage);
          },
          child: Icon(
            Icons.add,
            color: AppColor.colorwithe,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
        selectedLabelStyle: TextStyle(fontSize: 10),
        unselectedItemColor: AppColor.colorBlack,
        selectedItemColor: AppColor.c,
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        currentIndex: selectIndex,
        onTap: (index) {
          setState(() {
            selectIndex = index;

            // إذا تم الضغط على زر المحادثات
            if (index == 3) {
              showChatBottomSheet(); // استدعاء دالة عرض الشريط السفلي
            }
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: " الرئيسية"),
          BottomNavigationBarItem(icon: Icon(Icons.info), label: "حول"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "الاعدادات"),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: "المحادثات"),
        ],
      ),
      body: listpage.elementAt(selectIndex),
    );
  }
}