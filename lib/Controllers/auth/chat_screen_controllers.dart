import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class ChatController extends GetxController{
  final TextEditingController textController =TextEditingController();
  var respones =''.obs;



  Future<void> sendMassage() async{
    final response = await http.post(
      Uri.parse(""),
      headers : <String,String>{
        '':''
      },
      body:jsonEncode(<String,String>{
        "message": textController.text
      })

    );
    if(response.statusCode==200) {
      this.respones.value = jsonDecode(response.body)['response'];
    }
    else{
      throw Exception("فشل الاتصال بالخادم");
    }
  }
}