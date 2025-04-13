// import 'package:app01/core/Constant/Colors.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';
// import '../../Controllers/homescreen.dart';
// import '../../core/Constant/routeName.dart';
// import '../widget/Langauges/Customnavgetor.dart';
//
//
//
// class Homescreen extends StatelessWidget {
//   final bool active =false;
//   const Homescreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     Get.put(HomeScreenIm());
//
//
//     return GetBuilder<HomeScreenIm>(builder: (controller)=>Scaffold(
//       floatingActionButton: FloatingActionButton(
//         backgroundColor: AppColor.colormain2,
//         shape: CircleBorder(),
//         onPressed: (){
//           Get.offNamed(AppRoute.bookinfpage);
//         },child: Icon(Icons.add),),
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//       bottomNavigationBar: BottomAppBar(
//         color: AppColor.colormain2.withOpacity(0.3),
//         shape: CircularNotchedRectangle(),
//         child: Row(children: [
//           Row(children: [
//             Customnavgetor(onpresed: () {  controller.chagepage(0); },
//
//               active: controller.currentpage==0?true : false,
//               icondata: Icons.home,),
//
//
//             Customnavgetor(onpresed: () {  controller.chagepage(1); },
//
//               active: controller.currentpage==1?true : false,
//               icondata: Icons.lock_reset,),
//           ],),
//           Spacer(),
//           Row(children: [
//             Customnavgetor(onpresed: () {  controller.chagepage(2); },
//
//               active: controller.currentpage==2?true : false,
//               icondata: Icons.info_outline,),
//
//
//             Customnavgetor(onpresed: () {  controller.chagepage(3); },
//
//               active: controller.currentpage==3?true : false,
//               icondata: Icons.person,),
//           ],),
//
//         ],),),
//       body: controller.listpage.elementAt(controller.currentpage),
//
//
//     )
//     );
//   }
// }
