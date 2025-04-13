import 'package:app01/core/Services/Services.dart';
import 'package:app01/view/Screens/Langauges.dart';
import 'package:app01/view/Screens/notifications.dart';
import 'package:app01/view/Screens/onbprding1.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'Routes.dart';
import 'core/Constant/Colors.dart';
import 'core/Localiztion/Translation.dart';
import 'core/Localiztion/changelocal.dart';
import 'firebase_options.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp( Project());
}



class Project extends StatelessWidget {
  const Project({super.key});

  @override
  Widget build(BuildContext context) {
    LocaleController controller = Get.put(LocaleController());
    return GetMaterialApp(
      locale: controller.Language,
      debugShowCheckedModeBanner: false,
      translations: MyTranslation(),
      theme: ThemeData(
        fontFamily: "Cairo",
        textSelectionTheme: TextSelectionThemeData(
          cursorColor: AppColor.colorGray.withOpacity(0.5),
        ),
        textTheme: TextTheme(),
      ),
     getPages: routes,
      home: const OnBrding1(),
    );
  }
}