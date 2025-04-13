import 'package:app01/core/Constant/Colors.dart';
import 'package:app01/core/Constant/Images.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'chat.dart';
import 'chat2.dart';

class HomeChat extends StatefulWidget {
  const HomeChat({super.key});

  @override
  State<HomeChat> createState() => _HomeChatState();
}

class _HomeChatState extends State<HomeChat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.c,
        title: Text("صفحة المحادثات",    style: TextStyle(color: AppColor.colorwithe, fontSize: 15),),
      ),
      body: Container(
        color: AppColor.colorwithe,
        child: ListView(
          children: [
            InkWell(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Chat()));
              },
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      leading: CircleAvatar(radius: 30,
                      backgroundColor: AppColor.cc,
                      //  backgroundImage: AssetImage(AppImagesAsset.chat)
                        ),
                      title: Text("الدكتورة تهاني",style: TextStyle(color: AppColor.colorBlack,fontWeight: FontWeight.bold),),
                    ),
                  ),
                  Divider(color: AppColor.colorGray2,),

                ],
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Chat2()));
              },
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      leading: CircleAvatar(radius: 30,  backgroundColor: AppColor.colorGray2,),
                      title: Text("سلامتك",style: TextStyle(color: AppColor.colorBlack,fontWeight: FontWeight.bold),),
                    ),
                  ),
                  Divider(color: AppColor.colorGray2,),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
