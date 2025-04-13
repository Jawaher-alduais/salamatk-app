

import 'package:app01/view/Screens/Langauges.dart';
import 'package:app01/view/Screens/Profile.dart';
import 'package:app01/view/Screens/auth/Home_chat.dart';
import 'package:app01/view/Screens/auth/Login.dart';
import 'package:app01/view/Screens/auth/chat.dart';
import 'package:app01/view/Screens/auth/chat_screen.dart';
import 'package:app01/view/Screens/auth/forgetpassword/forgetpassword.dart';
import 'package:app01/view/Screens/auth/forgetpassword/resetpassword.dart';
import 'package:app01/view/Screens/auth/forgetpassword/scussePassword.dart';
import 'package:app01/view/Screens/auth/scuss.dart';
import 'package:app01/view/Screens/auth/signup.dart';
import 'package:app01/view/Screens/auth/forgetpassword/verfiyCode.dart';
import 'package:app01/view/Screens/auth/verfiycodesignup.dart';
import 'package:app01/view/Screens/booking_page.dart';
import 'package:app01/view/Screens/doctor_information.dart';
import 'package:app01/view/Screens/homepage.dart';
import 'package:app01/view/Screens/homepagescreen.dart';
import 'package:app01/view/Screens/homescreen.dart';
import 'package:app01/view/Screens/notifications.dart';
import 'package:app01/view/Screens/onbprding1.dart';
import 'package:app01/view/Screens/onbprding2.dart';
import 'package:app01/view/Screens/onbprding3.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'core/Constant/routeName.dart';


List<GetPage<dynamic>>? routes= [
  GetPage(name: "/", page: ()=> const OnBrding1()),
  GetPage(name: AppRoute.onpording2, page: ()=> const OnBrding2()),
  GetPage(name: AppRoute.onpording3, page: ()=> const OnBrding3()),
  GetPage(name: AppRoute.langauge, page: ()=> const Languages()),
  GetPage(name: AppRoute.Login, page: ()=> const Login()),
  GetPage(name: AppRoute.signUp, page: ()=>const SignUp()),
  GetPage(name: AppRoute.forgetPassword, page: ()=>const Forgetpassword()),
  GetPage(name: AppRoute.verfiyCode, page: ()=> const VerfiyCode()),
  GetPage(name:  AppRoute.resetPassword, page: ()=>const resetpassword()),
  GetPage(name:  AppRoute.sucsseResetPassword, page: ()=>const Scussepassword()),
  GetPage(name: AppRoute.sucsseSingUp, page: ()=>const SucsseSingUp()),
  GetPage(name: AppRoute.verfiycodesignup, page: ()=>const VerfiyCodeSingUp()),
  GetPage(name: AppRoute.homepage, page: ()=> HomePage()),
  GetPage(name: AppRoute.bookinfpage, page: ()=> BookingPage()),
  GetPage(name: AppRoute.profile, page: ()=>  Profile()),
  GetPage(name: AppRoute.doctorInformation, page: ()=> const DoctorInformation()),
  GetPage(name: AppRoute.homepagescreen, page: ()=> const Homepagescreen()),
  GetPage(name: AppRoute.chats, page: ()=>  Chat()),
  GetPage(name: AppRoute.notfaction, page: ()=> const Notifications()),
  GetPage(name: AppRoute.homechat, page: ()=> const HomeChat()),
  GetPage(name: AppRoute.chat_screen, page: ()=>  ChatScreen()),

];

