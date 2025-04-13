import 'package:app01/binding.dart';
import 'package:app01/core/Constant/Colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/Constant/Images.dart';

class DoctorInformation extends StatelessWidget {
  const DoctorInformation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:Colors.white,
        appBar:  PreferredSize(
            preferredSize: Size.fromHeight(5.0), // تحديد ارتفاع AppBar
            child: AppBar(
              backgroundColor: AppColor.c,)),
        //appBar: AppBar(),
        // drawer: Drawer(
        //   child: ListView(
        //       children: [
        //         UserAccountsDrawerHeader(
        //           accountName: Transform.translate(
        //             offset: Offset(10,10),
        //             child: Text("عائشة إبراهيم", style: Theme.of(context).textTheme.headlineMedium?.copyWith(
        //               color: Colors.white
        //             )),
        //           ),
        //           accountEmail: Text("مرحبًا بك"),
        //           currentAccountPicture: CircleAvatar(
        //             backgroundImage: AssetImage("assets/images/Doc.png"), // أضف صورة المستخدم هنا
        //           ),
        //           decoration: BoxDecoration(
        //             color: AppColor.c,
        //           ),
        //         ),
        //         // ListTile(
        //         //   leading:IconButton(onPressed: () {  }, icon: Icon(Icons.person, size: 30,color: AppColor.c,),
        //         //     ),
        //         //   title: Text('عائشة إبراهيم'),
        //         //   subtitle: Text('مرحبًا بك'),
        //         // ),
        //         // Padding(
        //         //   padding: const EdgeInsets.only(right: 10),
        //         //   child: Divider(),
        //         // ),
        //         InkWell(
        //           onTap: (){},
        //           child: ListTile(
        //             leading:Icon( Icons.email, size: 30,color: AppColor.c,),
        //             title: Text('بريدك الإلكتروني'),
        //             subtitle: Text('jjjjjjj@gmail.com'),
        //           ),
        //         ),
        //         Padding(
        //           padding: const EdgeInsets.only(right: 10),
        //           child: Divider(),
        //         ),
        //         InkWell(
        //           onTap: (){},
        //           child: ListTile(
        //             leading:Icon(Icons.star, size: 30,color: AppColor.c),
        //             title:Text('قيم هذا التطبيق'),
        //             subtitle: Text('قيم هنا'),
        //           ),
        //         ),
        //         Padding(
        //           padding: const EdgeInsets.only(right: 10),
        //           child: Divider(),
        //         ),
        //         InkWell(
        //           onTap: (){},
        //           child: ListTile(
        //             leading:Icon(Icons.home, size: 30,color: AppColor.c,),
        //             title:Text('الصفحة الرئيسية')
        //           ),
        //         ),
        //         Padding(
        //           padding: const EdgeInsets.only(right: 10),
        //           child: Divider(),
        //         ),
        //         ListTile(
        //           leading:Icon(Icons.exit_to_app, size: 30, color: AppColor.c,),
        //           title: Text('تسجيل الخروج'),
        //         ),
        //
        //
        //       ],
        //     ),
        // ),
        body: Directionality(
          textDirection: TextDirection.rtl,
          child: ListView(children: [
            Column(
              children: [
                Container(
                    height: 380,
                    // width: 400,
                    // margin: EdgeInsets.only(top: 50),
                    decoration: BoxDecoration(
                     // border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                          topRight: Radius.zero,
                          topLeft: Radius.zero),
                      image: DecorationImage(
                          image: AssetImage(
                            "assets/images/Dr.png",
                          ),
                          fit: BoxFit.fitWidth,
                      ),
                    )),
                // Container(
                //   height: 300,
                //   width: 300,
                //   child: CircleAvatar(
                //     backgroundImage: AssetImage("assest/images/Dr.png"),
                //   ),
                // ),
                SizedBox(height: 10,),
                Text(
                  "26".tr,
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge
                      ?.copyWith(color: AppColor.c, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10,),
                Text(
                  "27".tr,
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(color: AppColor.c),
                ),
                //SizedBox(height: 20,),
                Container(
                    color: Colors.white10,
                    padding: EdgeInsets.only(top: 10, right: 10),
                    margin: EdgeInsets.all(10),
                    alignment: Alignment.centerRight,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // قسم المؤهلات
                        Row(
                          children: [
                            Icon(Icons.school, size: 30, color: AppColor.c),
                            SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "28".tr,
                                 // style: Theme.of(context).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w500),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  "29".tr,
                                  style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Colors.black,),
                                ),
                              ],
                            ),
                          ],
                        ),
                        // Text(
                        //   "المؤهلات",
                        //   style: Theme.of(context).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold),
                        // ),
                        // SizedBox(height: 5),
                        // Padding(
                        //   padding: const EdgeInsets.only(left: 8.0),
                        //   child: Text(
                        //     "- بكالريوس في طب الأسنان",
                        //     style: Theme.of(context)
                        //         .textTheme
                        //         .titleMedium
                        //         ?.copyWith(
                        //       color: Colors.black,
                        //       //fontWeight: FontWeight.bold,
                        //     ),
                        //     //style: Theme.of(context).textTheme.bodyMedium,
                        //   ),
                        // ),
                        Divider(
                            color: Colors.grey.shade300,
                            thickness: 1,
                            height: 20),

                        // قسم ساعات العمل
                        Row(
                          children: [
                            Icon(Icons.access_alarm, size: 30,color: AppColor.c,),//black54
                            Column(
                              children: [
                                Text(
                                  "30".tr,
                                 // style: Theme.of(context).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w500),

                                ),
                                SizedBox(height: 5),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Text(
                                    "   09:00 ص - 02:00 م",
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleMedium
                                        ?.copyWith(
                                      fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        // SizedBox(height: 5),
                        // Padding(
                        //   padding: const EdgeInsets.only(left: 8.0),
                        //   child: Text(
                        //      "09:00 ص - 02:00 م ",
                        //     style: Theme.of(context)
                        //         .textTheme
                        //         .titleMedium
                        //         ?.copyWith(
                        //           color: Colors.black,
                        //           // fontWeight: FontWeight.w500
                        //         ),
                        //   ),
                        // ),

                        Divider(
                            color: Colors.grey.shade300,
                            thickness: 1,
                            height: 20),


                        Row(
                          children: [
                            Icon(Icons.account_balance_outlined, size: 30, color: AppColor.c),
                            SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // Text(
                                //   "معلومات الاتصال",
                                //   style: Theme.of(context).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold),
                                // ),
                                SizedBox(height: 5),
                                Row(
                                  children: [
                                    Text(
                                      "31".tr,
                                      //style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Colors.black),
                                    ),

                                  ],
                                ),
                                SizedBox(height: 5),
                                Row(
                                  children: [
                                    Text(
                                      "32".tr,
                                      //style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Colors.black),
                                    ),
                                    Text("0124312212", style: TextStyle(fontWeight: FontWeight.bold),)

                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        Divider(
                            color: Colors.grey.shade300,
                            thickness: 1,
                            height: 20),

                        Row(
                          children: [
                            Icon(Icons.contact_phone, size: 30, color: AppColor.c),
                            SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // Text(
                                //   "معلومات الاتصال",
                                //   style: Theme.of(context).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold),
                                // ),
                                SizedBox(height: 5),
                                Row(
                                  children: [
                                    Text(
                                      "33".tr,
                                      //style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Colors.black),
                                    ),
                                    Text("0123456789", style: TextStyle(fontWeight: FontWeight.bold),)
                                  ],
                                ),
                                SizedBox(height: 5),
                                Row(
                                  children: [
                                    Text(
                                      " 34 ".tr,
                                      //style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Colors.black),
                                    ),
                                    Text("tahani@gmail.com", style: TextStyle(fontWeight: FontWeight.bold),)

                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        // Text(
                        //   "معلومات الاتصال:",
                        //   style: Theme.of(context).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold),
                        //
                        //   // style: Theme.of(context)
                        //   //     .textTheme
                        //   //     .headlineSmall
                        //   //     ?.copyWith(
                        //   //       color: Colors.black,
                        //   //       fontWeight: FontWeight.bold,
                        //   //     ),
                        // ),
                        // SizedBox(height: 5),
                        // Padding(
                        //   padding: const EdgeInsets.only(left: 8.0),
                        //   child: Column(
                        //     crossAxisAlignment: CrossAxisAlignment.start,
                        //     children: [
                        //       Row(
                        //         children: [
                        //           Icon(Icons.phone,
                        //               color: AppColor.c, size: 20),
                        //           SizedBox(width: 5),
                        //           Text("رقم الهاتف: 0123456789",
                        //               style: Theme.of(context)
                        //                   .textTheme
                        //                   .bodyMedium),
                        //         ],
                        //       ),
                        //       SizedBox(height: 5),
                        //       Row(
                        //         children: [
                        //           Icon(Icons.email,
                        //               color: AppColor.c, size: 20),
                        //           SizedBox(width: 5),
                        //           Text("البريد الإلكتروني: tehani@example.com",
                        //               style: Theme.of(context)
                        //                   .textTheme
                        //                   .bodyMedium),
                        //         ],
                        //       ),
                        //     ],
                        //   ),
                        // ),
                        Divider(
                            color: Colors.grey.shade300,
                            thickness: 1,
                            height: 20),
                        Row(
                          children: [
                            Icon(Icons.info, size: 30, color: AppColor.c),
                            SizedBox(width: 10),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "35".tr,//style: TextStyle(fontSize: 18),
                                    //style: Theme.of(context).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(height: 5),
                                  Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: Text(
                                        "36".tr,
                                        style: Theme.of(context).textTheme.bodyMedium,
                                      ),)
                                ],
                              ),
                            ),
                          ],
                        ),


                        // قسم نبذة عن الطبيب
                        // Text(
                        //   "نبذة عن الطبيب:",
                        //   style: Theme.of(context).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold),
                        //
                        // ),
                        // SizedBox(height: 5),
                        // Padding(
                        //   padding: const EdgeInsets.only(left: 8.0),
                        //   child: Text(
                        //     "د. تهاني أحمد هي طبيبة أسنان ذات خبرة واسعة في معالجة الحالات المختلفة...",
                        //     style: Theme.of(context).textTheme.bodyMedium,
                        //   ),
                        //),
                      ],
                    )

                    // Column(
                    //   children: [
                    //     Text(
                    //       "المؤهلات:        ",
                    //       style: Theme.of(context).textTheme.headlineSmall,
                    //     ),
                    //     Text(
                    //       " - بكاليوس في طب الأسنان ",
                    //       style: Theme.of(context).textTheme.bodyMedium,
                    //     ),
                    //     SizedBox(
                    //       height: 15,
                    //     ),
                    //     Text(
                    //       "ساعات العمل:   ",
                    //       style: Theme.of(context).textTheme.headlineSmall,
                    //     ),
                    //     Text(
                    //       " - من 9 صباحًا حتى 2 مساءً ",
                    //       style: Theme.of(context).textTheme.bodyMedium,
                    //     ),
                    //     SizedBox(
                    //       height: 15,
                    //     ),
                    //     Text(
                    //       "معلومات الاتصال:",
                    //       style: Theme.of(context).textTheme.headlineSmall,
                    //     ),
                    //     Text(
                    //       "- رقم الهاتف: 0123456789",
                    //       style: Theme.of(context).textTheme.bodyMedium,
                    //     ),
                    //     Text("- البريد الإلكتروني: tehani@example.com ", style: Theme.of(context).textTheme.bodyMedium,),
                    //     SizedBox(height: 15,),
                    //     Text(
                    //       "نبذة عن الطبيب:  ",
                    //       style: Theme.of(context).textTheme.headlineSmall,
                    //     ),
                    //   ],
                    // ),
                    )
              ],
            ),
          ]),
        ));
  }
}
