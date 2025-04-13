//import 'dart:js_interop';

import 'package:app01/core/Constant/Colors.dart';
import 'package:app01/view/widget/Langauges/auth/customtextform.dart';
import 'package:flutter/material.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:get/get.dart';
import '../../Controllers/Booking1_controllar.dart';
import '../../Controllers/auth/booking_controller.dart';
import '../../Controllers/booking_atart_controller.dart';
import '../../core/Class/curdRequest.dart';
import '../../core/Constant/routeName.dart';
import '../../core/function/aleartexit.dart';
import '../widget/Langauges/auth/clipper.dart';
import '../widget/Langauges/custombotom.dart';
import 'package:image_picker/image_picker.dart';

class BookingPage extends StatelessWidget {
  BookingPage({Key? key}) : super(key: key);

  final PaymentController paymentController = Get.put(PaymentController());

  @override
  Widget build(BuildContext context) {
    Get.put(Crud());
    final TextEditingController? mycontroller;
    Booking1ControllarImp controller   =   Get.put(Booking1ControllarImp());
    BookingAtartControllerIm controller2   =   Get.put(BookingAtartControllerIm());
    return Scaffold(
        appBar: AppBar(
              automaticallyImplyLeading: true,
          backgroundColor: AppColor.colorwithe,),
        backgroundColor: AppColor.colorwithe,


        body: GetBuilder<Booking1ControllarImp>(builder: (controller)=>
                 Column(
                   children: [
                     Expanded(  child: Form(
                                   key: controller.formState,
                                 child: ListView(padding: EdgeInsets.only(top: 50), children: [
                                   Stack(children: [

                                   ]),
                                   Center(
                      child: Text(
                                     "37".tr,
                                     style: Theme.of(context).textTheme.headlineSmall,
                                     // style: TextStyle(fontWeight: FontWeight.bold),
                                   )),
                                   Padding(
                                     padding: const EdgeInsets.all(18.0),
                                     child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      textDirection: TextDirection.rtl,
                      children: [
                        Form(
                          child: Customtextform(
                              mycontroller: controller.patientName,
                              hintText: "38".tr,
                            //  mycontroller: TextEditingController(),
                              valid: (p0) {},
                              isNumber: false),
                        ),

                        Form(
                            child: Customtextform(
                                hintText: "39".tr,
                                mycontroller: controller.age_p,
                                valid: (p0) {},
                                isNumber: true)),

                        Form(
                            child: Customtextform(
                                hintText: "40".tr,
                                mycontroller: controller.phone_p,
                                valid: (p0) {},
                                isNumber: true)),

                        Form(
                          child: Customtextform(
                              hintText: "41".tr,
                              mycontroller: controller.address_p,
                              valid: (p0) {},
                              isNumber: false),
                        ),

                        //---------------------------
                       GetBuilder<Booking1ControllarImp>(
                           builder: (controller) => Directionality(
                               textDirection: TextDirection.rtl,
                               child: Container(
                                   child:  Directionality(
                          textDirection: TextDirection.rtl,
                          child: Container(
                            // decoration: BoxDecoration(
                            //     borderRadius: BorderRadius.circular(10),
                            //   //border: OutlineInputBorder()
                            //
                            //   ),
                            child: DropdownSearch<String>(
                              items: (f, cs) => [
                                "المعاينة _ 2000ري ",
                                "الخلع _ 1000ري ",
                                'الحشو _ 3000ري ',
                                'تنظيف الاسنان _ 3000ري ',
                                'تقويم الاسنان _ 200000ري',
                                'تبييض الاسنان _ 15000',

                              ],
                   selectedItem: controller.selectedSickCondition.isEmpty ? null
                     : controller.selectedSickCondition,
                    onChanged: (value) {
                      controller.selectedSickCondition = value ?? '';
                      controller.update();

                      popupProps:
                      PopupProps.menu(

                        showSearchBox: true,
                        // disabledItemFn: (item) => item == 'Item 3',
                        fit: FlexFit.loose,
                        menuProps: MenuProps(
                          backgroundColor: AppColor.colorwithe,
                          //borderRadius: BorderRadius.circular(10)
                        ),

                        searchFieldProps: TextFieldProps(
                            decoration: InputDecoration(
                                hintText: "ابحث هنا...",
                                hintStyle: TextStyle(
                                    fontSize: 14, color: AppColor.colorGray2),
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 2, horizontal: 10),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: AppColor.c4),
                                ))),
                      );
                      decoratorProps:
                      DropDownDecoratorProps(
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 5, horizontal: 20),
                            filled: true,
                            fillColor: AppColor.c3,
                            // labelText: "الحالة المرضية",
                            hintText: "42".tr,
                            hintStyle: TextStyle(
                                fontSize: 14, color: AppColor.colorGray2),

                            // border: OutlineInputBorder(
                            //   borderRadius: BorderRadius.circular(8),
                            //   //borderSide: BorderSide(color: Colors.white)
                            //   borderSide: BorderSide.none,
                            // ),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: AppColor.c4),
                                borderRadius: BorderRadius.circular(8))),
                      );
                    })
                          ),
                              )))),
                        SizedBox(
                          height: 20,
                        ),
                        Form(
                          child: Customtextform(
                              hintText: "43".tr,
                              mycontroller: controller.reservdate,
                              valid: (p0) {},
                              isNumber: false),
                        ),

                                   Directionality(
                                     textDirection: TextDirection.rtl,
                                     child: Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        textDirection: TextDirection.rtl,
                        children: [
                          //SizedBox(height: 20),
                          Directionality(
                            textDirection: TextDirection.rtl,
                            child: Container(
                                padding: EdgeInsets.only(bottom: 20),
                                child: Text(
                                  "44".tr,
                                  style: Theme.of(context).textTheme.headlineSmall,
                                )),
                          ),
                          Obx(() => Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ListTile(
                                      leading: Radio<String>(
                                        value: "cash",
                                        groupValue: paymentController
                                            .selectedPaymentMethod.value,
                                        activeColor: AppColor.c,
                                        onChanged: (value) {
                                          paymentController.setPaymentMethod(value!);
                                        },
                                      ),
                                      title: Text(
                                        "45".tr,
                                        style: Theme.of(context).textTheme.titleMedium,
                                      ),
                                    ),
                                    ListTile(
                                      leading: Radio<String>(
                                        value: "wallet",
                                        groupValue: paymentController
                                            .selectedPaymentMethod.value,
                                        activeColor: AppColor.c,
                                        onChanged: (value) {
                                          paymentController.setPaymentMethod(value!);

                                          if (value == "wallet") {
                                            // إظهار AlertDialog عند اختيار "wallet"
                                            showDialog(
                                              context: context,
                                              builder: (BuildContext context) {
                                                return GetBuilder<Booking1ControllarImp>(
                                                  builder: (controller) => AlertDialog(
                                                    title: Text('47'.tr),
                                                    content: SingleChildScrollView(
                                                      child: Column(
                                                        children: [
                                                          TextField(
                                                            decoration: InputDecoration(

                                                              hintText: "أسم المريض".tr,
                                                              hintStyle: TextStyle(fontSize: 14, color: AppColor.colorGray2),
                                                              enabledBorder: UnderlineInputBorder(
                                                                  borderSide: BorderSide(color: AppColor.c4)),
                                                              focusedBorder: UnderlineInputBorder(
                                                                  borderSide: BorderSide(
                                                                      color: AppColor.colorGray.withOpacity(0.5))),
                                                            ),
                                                          ),
                                                          TextField(
                                                            controller: controller.num_bill,
                                                            decoration: InputDecoration(
                                                              hintText: "رقم الحوالة".tr,
                                                              hintStyle: TextStyle(fontSize: 14, color: AppColor.colorGray2),
                                                                enabledBorder: UnderlineInputBorder(
                                                                    borderSide: BorderSide(color: AppColor.c4)),
                                                                focusedBorder: UnderlineInputBorder(
                                                                    borderSide: BorderSide(
                                                                        color: AppColor.colorGray.withOpacity(0.5)))
                                                            ),
                                                          ),
                                                          TextField(
                                                            readOnly: true,
                                                            keyboardType: TextInputType.none,
                                                            textDirection: TextDirection.rtl,
                                                            decoration: InputDecoration(
                                                              hintText: "50".tr,
                                                              hintStyle: TextStyle(fontSize: 14, color: AppColor.colorGray2),
                                                              suffixIcon: Row(
                                                                mainAxisSize: MainAxisSize.min,
                                                                children: [
                                                                  IconButton(
                                                                    icon: Icon(Icons.camera_alt, color: AppColor.c),
                                                                    onPressed: () {
                                                                      paymentController.pickImageFromCamera();
                                                                    },
                                                                  ),
                                                                  IconButton(
                                                                    icon: Icon(Icons.photo, color: AppColor.c),
                                                                    onPressed: () {
                                                                      paymentController.pickImageFromGallery();
                                                                    },
                                                                  ),
                                                                ],
                                                              ),
                                                              contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 8),
                                                              enabledBorder: UnderlineInputBorder(
                                                                  borderSide: BorderSide(color: AppColor.c4)),
                                                              focusedBorder: UnderlineInputBorder(
                                                                  borderSide: BorderSide(
                                                                      color: AppColor.colorGray.withOpacity(0.5))),
                                                            ),
                                                            textAlign: TextAlign.right,
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    actions: [
                                                      TextButton(
                                                        child: Text("51".tr),
                                                        style: TextButton.styleFrom(foregroundColor: Colors.grey),
                                                        onPressed: () {
                                                          Navigator.of(context).pop();
                                                        },
                                                      ),
                                                      TextButton(
                                                        child: Text("52".tr),
                                                        style: TextButton.styleFrom(foregroundColor: AppColor.c),
                                                        onPressed: () {
                                                          Navigator.of(context).pop();
                                                        },
                                                      ),
                                                    ],
                                                  ),
                                                );
                                              },
                                            );


                                          }
                                        },
                                      ),
                                      title: Text(
                                        "46".tr,
                                        style: Theme.of(context).textTheme.titleMedium,
                                      ),
                                    ),

                                  ])),
                          SizedBox(
                            height: 20,
                          ),
                          Custombotom(
                            TextButtom: '53'.tr,
                            onpresed: () {
                            //  Get.offNamed(AppRoute.sucsseSingUp);
                           controller.Booking1();
                            },
                          )
                        ],
                      ),
                                     ),
                                   ),
                                 ]))]),
                               )),
                   ],
                 ),
            ) );
  }
}
