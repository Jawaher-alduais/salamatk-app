import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class PaymentController extends GetxController {
  var selectedPaymentMethod = 'cash'.obs;// القيمة الافتراضية
  var selectedImage = Rx<File?>(null);
  final ImagePicker _picker = ImagePicker();


  void setPaymentMethod(String method) {
    selectedPaymentMethod.value = method;
  }
  Future<void> pickImageFromCamera() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.camera);
    if (pickedFile != null) {
      selectedImage.value = File(pickedFile.path);
    }
  }
  Future<void> pickImageFromGallery() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      selectedImage.value = File(pickedFile.path);
    }
  }
}
