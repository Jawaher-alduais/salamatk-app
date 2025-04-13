import 'package:app01/Controllers/auth/chat_screen_controllers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class ChatScreen extends StatelessWidget {
   ChatScreen({super.key});
 final ChatController chatController= Get.put(ChatController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("أستشاره أولية"),),
      body: Padding(padding: const EdgeInsets.all(16.0),
        child: Column(children: [
          TextField(
            controller: chatController.textController,
            decoration: InputDecoration(labelText:'أدخل سؤالك'),

          ),
          ElevatedButton(onPressed: (){
            chatController.sendMassage();
          }, child: Text('اسأل')),
          SizedBox(height: 20,),
          Obx(()=>Text(
              ":الرد ${chatController.respones}"))
        ],),
      ),
    );
  }
}
