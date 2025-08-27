import 'dart:convert';
import 'package:app01/core/Constant/Colors.dart';
import 'package:app01/core/Constant/Images.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../Model/user_model.dart';
import 'package:get/get.dart';
import '../../core/Constant/routeName.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  user_model? user;
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    loadUserData();
  }

  Future<void> loadUserData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? userJson = prefs.getString("user");

    if (userJson != null) {
      Map<String, dynamic> userMap = jsonDecode(userJson);
      user = user_model.from_json(userMap);
    }

    setState(() {
      isLoading = false;
    });
  }

  Future<void> logout() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove("user");
    Get.offAllNamed(AppRoute.Login); // غيّر المسار حسب مشروعك
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'الملف الشخصي',
          style: TextStyle(color: AppColor.colorwithe),
        ),
        backgroundColor: AppColor.c,
      ),
      body: isLoading
          ? Center(child: CircularProgressIndicator())
          : user == null
          ? Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.person_off, size: 80, color: Colors.grey),
            SizedBox(height: 10),
            Text(
              'لا توجد بيانات مستخدم محفوظة',
              style: TextStyle(fontSize: 18, color: Colors.black54),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Get.offAllNamed(AppRoute.Login);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColor.c,
                padding: EdgeInsets.symmetric(
                    horizontal: 30, vertical: 15),
              ),
              child: Text(
                'الذهاب لتسجيل الدخول',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      )
          : Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage(AppImagesAsset.SalamatakBlue,),
              backgroundColor: Colors.white,
            ),
            SizedBox(height: 20),
            Text(
              user!.name,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: AppColor.c.withOpacity(0.1),
                borderRadius: BorderRadius.circular(10),

              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('البريد الإلكتروني'),
                      Text(user!.email),
                    ],
                  ),
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('رقم الهاتف'),
                      Text(user!.number),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: logout,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                padding: EdgeInsets.symmetric(
                    horizontal: 30, vertical: 15),
              ),
              child: Text(
                'تسجيل الخروج',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
