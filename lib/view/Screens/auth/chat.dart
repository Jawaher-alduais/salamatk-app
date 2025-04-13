import 'package:app01/Model/model_chat.dart';
import 'package:app01/core/Constant/Colors.dart';
import 'package:chat_bubbles/bubbles/bubble_special_three.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/Constant/Images.dart';
import '../../../core/Constant/chat_list.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});
  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  TextEditingController text = TextEditingController();
  String myname = "chat1";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "الدكتوره تهاني",
          style: TextStyle(color: Colors.white, fontSize: 15),
        ),
        backgroundColor: AppColor.c,
      ),
      body: Container(
        decoration: BoxDecoration(

          image: DecorationImage(
            image: AssetImage(AppImagesAsset.chatscrren2),
            fit: BoxFit.cover,
          ),
        ),
      //  color: AppColor.cc,
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: chats.length,
                itemBuilder: (_, index) => BubbleSpecialThree(
                  isSender: chats[index].sender_name == myname,
                  text: chats[index].text.toString(),
                  color: chats[index].sender_name == myname ? AppColor.c2 : AppColor.c4,
                  tail: true,
                  textStyle: TextStyle(
                    color: chats[index].sender_name == myname ? AppColor.colorwithe : AppColor.colorBlack,
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
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
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
                        style: TextStyle(color: AppColor.c2),
                        decoration: InputDecoration(
                          hintText: "اكتب رسالة...",
                          hintStyle: TextStyle(color: AppColor.c5),
                          border: InputBorder.none,
                          filled: true,
                          fillColor: AppColor.c3,
                          contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 15), // padding داخل TextField
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: AppColor.c4),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: AppColor.c4),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10), // مساحة بين TextField و CircleAvatar
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: AppColor.c,
                      child: IconButton(
                        onPressed: () {
                          if (text.text.isNotEmpty) {
                            setState(() {
                              chats.add(model_chat(text.text, myname));
                              text.clear();
                            });
                          }
                        },
                        icon: Icon(Icons.send, color: Colors.white, size: 30),
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