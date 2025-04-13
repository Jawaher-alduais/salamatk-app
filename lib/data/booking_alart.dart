// import 'package:app01/core/Class/statusrequest.dart';
// import 'package:dartz/dartz.dart';
// import 'package:get/get_connect/http/src/response/response.dart';
// import 'package:intl/intl.dart';
//
//
// import '../../../core/Class/curdRequest.dart';
// import '../../../linkapi.dart';
//
//
// class Booking1Data{
//
//   Crud curd ;
//
//   Booking1Data(this.curd);
//
//   Future<Either<StatusRequest, Map>>postData( String patients_name, int bill_num) async {
//     var response =await curd.postData(AppLinks.bill_number , {
//       "patientName": patients_name,
//       "transfer_number": bill_num.toString(),
//
//
//
//     });
//     print({
//
//       "patientName": patients_name,
//       "transfer_number": bill_num.toString(),
//
//
//     });
//     print("Response result: $response");
//     return  response;
//
//   }
// }