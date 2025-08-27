import 'package:app01/core/Constant/Colors.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {

  getToken()async{
    String? mytoken = await FirebaseMessaging.instance.getToken();
    print("================================= NOTFCATIONS==================================");
    print(mytoken);
  }


  mypermassion() async{
    FirebaseMessaging messaging = FirebaseMessaging.instance;

    NotificationSettings settings = await messaging.requestPermission(
      alert: true,
      announcement: false,
      badge: true,
      carPlay: false,
      criticalAlert: false,
      provisional: false,
      sound: true,
    );

    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      print('User granted permission');
    } else if (settings.authorizationStatus == AuthorizationStatus.provisional) {
      print('User granted provisional permission');
    } else {
      print('User declined or has not accepted permission');
    }
  }

  @override
  void initState() {
    mypermassion();
    getToken();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text('الاشعارات', style: TextStyle(
          color: AppColor.colorwithe ,

        ),),

        backgroundColor: AppColor.c,
      ),
      //  backgroundColor: AppColor.c,
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.message),
            title: Text('عياد سلامتك'),
            subtitle: Text('غدا لديك عوده عند طبيب الاسنان'),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              // التعامل مع الضغط على العنصر الأول
              print('Tapped on Message 1');
            },
          ),
          ListTile(
            leading: Icon(Icons.message),
            title: Text('التذكير'),
            subtitle: Text('نتمى الاهتمام بموعد الدواء'),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              // التعامل مع الضغط على العنصر الثاني
              print('Tapped on Message 2');
            },
          ),
        ],
      ),
    );
  }
}

