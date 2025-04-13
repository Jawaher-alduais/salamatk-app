import 'package:app01/Model/model_chat.dart';
import 'package:app01/core/Constant/Colors.dart';
import 'package:chat_bubbles/bubbles/bubble_special_three.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/Constant/Images.dart';
import '../../../core/Constant/chat_list.dart';

class Chat2 extends StatefulWidget {
  const Chat2({super.key});
  @override
  State<Chat2> createState() => _ChatState();
}

class _ChatState extends State<Chat2> {
  TextEditingController text = TextEditingController();
  String myname = "chat2";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "عائشة",
          style: TextStyle(color: Colors.white, fontSize: 15),
        ),
        backgroundColor: AppColor.c, // لون الخلفية
      ),
      body: Container(
        decoration: BoxDecoration(
          // لون خلفية (يمكن تغييره)
          image: DecorationImage(
            image: AssetImage(AppImagesAsset.chatscrren), // رابط الصورة
            fit: BoxFit.cover, // كيفية ملء الصورة
          ),
        ),
      //  color: AppColor.cc, // لون الخلفية
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: chats.length,
                itemBuilder: (_, index) => BubbleSpecialThree(
                  isSender: chats[index].sender_name == myname,
                  text: chats[index].text.toString(),
                  color: chats[index].sender_name == myname ? AppColor.c2 : AppColor.colormain, // استخدام الألوان
                  tail: true,
                  textStyle: TextStyle(
                    color:  chats[index].sender_name == myname ? AppColor.colorwithe : AppColor.colorBlack,
                    fontSize: 14,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white, // لون خلفية الحاوية
                  borderRadius: BorderRadius.circular(30), // زوايا مدورة
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 10,
                      offset: Offset(0, 2), // ظل الشريط
                    ),
                  ],
                ),
                height: 70,
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: text,
                        style: TextStyle(color: AppColor.c2), // لون النص
                        decoration: InputDecoration(
                          hintText: "اكتب رسالة...",
                          hintStyle: TextStyle(color: AppColor.c5), // لون النص الوهمي
                          border: InputBorder.none,
                          filled: true,
                          fillColor: AppColor.c3, // لون خلفية حقل الإدخال
                          contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 15), // padding داخل TextField
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: AppColor.c4), // لون حدود حقل الإدخال
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: AppColor.c4), // لون حدود حقل الإدخال عند التركيز
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10), // مساحة بين TextField و CircleAvatar
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: AppColor.c, // لون خلفية الزر
                      child: IconButton(
                        onPressed: () {
                          if (text.text.isNotEmpty) { // تحقق من أن النص ليس فارغًا
                            setState(() {
                              chats.add(model_chat(text.text, myname));
                              text.clear(); // استخدم text.clear() لمسح النص
                            });
                          }
                        },
                        icon: Icon(Icons.send, color: Colors.white, size: 30), // لون الرمز
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}