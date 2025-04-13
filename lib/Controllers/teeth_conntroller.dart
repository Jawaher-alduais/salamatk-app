import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import '../core/Class/modelteeth.dart';

 abstract class TeethController extends GetxController {
   fetchTeeth();

 }

   class ToothControllerImp extends TeethController {
   var teethList = <Tooth>[].obs;

   void fetchTeeth() async {
   final response = await http.get(Uri.parse('https://medtechfounder.com/best-digital-health-apis/?param1=value1&param2=value2'));

   if (response.statusCode == 200) {
   List jsonResponse = json.decode(response.body);
   teethList.value = jsonResponse.map((data) => Tooth.fromJson(data)).toList();
   update(); // تحديث الواجهة
   } else {
   throw Exception('Failed to load teeth data');
   }
   }
   }
