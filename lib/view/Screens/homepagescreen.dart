import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../core/Constant/Colors.dart';
import '../../core/Constant/Images.dart';
import '../../core/Constant/routeName.dart';

class Homepagescreen extends StatefulWidget {
  const Homepagescreen({super.key});

  @override
  State<Homepagescreen> createState() => _HomepagescreenState();
}

class _HomepagescreenState extends State<Homepagescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(5.0),
        child: AppBar(
          backgroundColor: AppColor.c,
        ),
      ),
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 0),
            child: ListView(
              children: [

            Container(
              margin: EdgeInsets.only(right: 0),
              child: ListTile(

              leading: CircleAvatar(child: IconButton(color: Colors.black, onPressed: () {
                Get.toNamed(AppRoute.notfaction);
              }, icon: Icon(Icons.notifications_active ,)),
             backgroundColor: AppColor.colormain3, // استبدل بالرابط الخاص بالصورة
                  ),
                  title: Text('مرحبًا بك',style: TextStyle(fontSize: 18),),
                  subtitle: Text("الاشعارات",style: TextStyle(fontSize: 10),),

                ),
                  ),


                Container(
                  margin: EdgeInsets.symmetric(vertical: 0),
                  child: Stack(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        child: ListTile(
                          title: Text("19".tr, style: TextStyle(fontSize: 23, color: AppColor.colorwithe)),
                          subtitle: Text("20".tr, style: TextStyle(fontSize: 15, color: AppColor.colorwithe.withOpacity(0.7))),
                        ),
                        height: 150,
                        decoration: BoxDecoration(
                          color: AppColor.c,
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      Positioned(
                        left: -30,
                        top: -140,
                        child: Image.asset(
                          AppImagesAsset.Imagehome1,
                          width: 180,
                          height: 500,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 4),
                Text("21".tr, style: TextStyle(fontSize: 20, color: AppColor.colorGray2)),
                SizedBox(height: 13),
                buildImageTile(AppImagesAsset.Imagehome4, "22".tr, "🌐"),
                SizedBox(height: 20),
                buildImageTile(AppImagesAsset.Imagehome6, "23".tr, "📚"),
                SizedBox(height: 20),
                buildImageTile(AppImagesAsset.Imagehome3, "24".tr, "✨"),
                SizedBox(height: 20),
                buildImageTile(AppImagesAsset.Imagehome5, "احرص على شرب كميات كافية من الماء", "💧"),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildImageTile(String imagePath, String text, String emoji) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: InkWell(
            child: Image.asset(
              imagePath,
              width: 320.0,
              height: 260.0,
              fit: BoxFit.cover,
            ),
            onTap: () async {
              final url = Uri.parse('https://example.com'); // استبدل هذا برابط موقعك
              if (await canLaunchUrl(url)) {
                await launchUrl(url);
              } else {
                throw 'Could not launch $url';
              }
            },
          ),
        ),
        SizedBox(height: 8),
        InkWell(
          child: Text("$emoji $text", textAlign: TextAlign.start),
          onTap: () async {
            final url = Uri.parse('https://example.com'); // استبدل هذا برابط موقعك
            if (await canLaunchUrl(url)) {
              await launchUrl(url);
            } else {
              throw 'Could not launch $url';
            }
          },
        ),
        SizedBox(height: 4),
      ],
    );
  }
}


