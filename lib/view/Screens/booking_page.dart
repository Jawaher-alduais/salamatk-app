import 'package:app01/core/Constant/Colors.dart';
import 'package:app01/view/widget/Langauges/auth/customtextform.dart';
import 'package:flutter/material.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:get/get.dart';
import '../../Controllers/Booking1_controllar.dart';
import '../../Controllers/auth/booking_controller.dart';
import '../../Controllers/booking_atart_controller.dart';
import '../../core/Class/curdRequest.dart';
import '../widget/Langauges/custombotom.dart';

class BookingPage extends StatelessWidget {
  BookingPage({Key? key}) : super(key: key);

  final PaymentController paymentController = Get.put(PaymentController());

  @override
  Widget build(BuildContext context) {
    // var numBill = num_bill.text;

    Get.put(Crud());
    Booking1ControllarImp controller = Get.put(Booking1ControllarImp());
    BookingAtartControllerIm controller2 = Get.put(BookingAtartControllerIm());

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: AppColor.colorwithe,
      ),
      backgroundColor: AppColor.colorwithe,
      body: GetBuilder<Booking1ControllarImp>(
        builder: (controller) => SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: Form(
                key: controller.formState,
                child: Column(
                  children: [
                    const SizedBox(height: 50),
                    Center(
                      child: Text(
                        "37".tr,
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        textDirection: TextDirection.rtl,
                        children: [
                          Customtextform(
                            mycontroller: controller.patientName,
                            hintText: "38".tr,
                            valid: (p0) => null,
                            isNumber: false,
                          ),
                          Customtextform(
                            hintText: "39".tr,
                            mycontroller: controller.age_p,
                            valid: (p0) => null,
                            isNumber: true,
                          ),
                          Customtextform(
                            hintText: "40".tr,
                            mycontroller: controller.phone_p,
                            valid: (p0) => null,
                            isNumber: true,
                          ),
                          Customtextform(
                            hintText: "41".tr,
                            mycontroller: controller.address_p,
                            valid: (p0) => null,
                            isNumber: false,
                          ),
                          Customtextform(
                            hintText: "الامراض المزمنة".tr,
                            mycontroller: controller.chronicdiseases,
                            valid: (p0) => null,
                            isNumber: false,
                          ),
                          Directionality(
                              textDirection: TextDirection.rtl,
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
                          const SizedBox(height: 20),
                          Customtextform(
                            hintText: "43".tr,
                            mycontroller: controller.reservdate,
                            valid: (p0) => null,
                            isNumber: false,
                          ),
                          Directionality(
                            textDirection: TextDirection.rtl,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Text(
                                    "44".tr,
                                    style:
                                    Theme.of(context).textTheme.headlineSmall,
                                  ),
                                ),
                                Obx(
                                      () => Column(
                                    children: [
                                      ListTile(
                                        leading: Radio<String>(
                                          value: "cash",
                                          groupValue: paymentController
                                              .selectedPaymentMethod.value,
                                          activeColor: AppColor.c,
                                          onChanged: (value) {
                                            paymentController
                                                .setPaymentMethod(value!);
                                          },
                                        ),
                                        title: Text("45".tr),
                                      ),
                                      ListTile(
                                        leading: Radio<String>(
                                          value: "wallet",
                                          groupValue: paymentController
                                              .selectedPaymentMethod.value,
                                          activeColor: AppColor.c,
                                          onChanged: (value) {
                                            paymentController
                                                .setPaymentMethod(value!);
                                          },
                                        ),
                                        title: Text("46".tr),
                                      ),
                                      if (paymentController
                                          .selectedPaymentMethod.value ==
                                          "wallet") ...[
                                        const SizedBox(height: 10),
                                        TextFormField(
                                          controller: controller.num_bill,
                                          decoration: InputDecoration(
                                            hintText: "رقم الحوالة".tr,

                                          ),
                                          validator: (val) => val == null || val.isEmpty
                                              ? "مطلوب"
                                              : null,
                                        ),
                                        const SizedBox(height: 10),

                                      ]
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Custombotom(
                                  TextButtom: '53'.tr,
                                  onpresed: () {
                                    if (controller.formState.currentState!
                                        .validate()) {
                                      controller.Booking1();
                                    }
                                  },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      