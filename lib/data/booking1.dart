import 'package:app01/core/Class/statusrequest.dart';
import 'package:dartz/dartz.dart';
import 'package:get/get_connect/http/src/response/response.dart';
import 'package:intl/intl.dart';


import '../../../core/Class/curdRequest.dart';
import '../../../linkapi.dart';


class Booking1Data{

  Crud curd ;

  Booking1Data(this.curd);

  Future<Either<StatusRequest, Map>>postData( String patientName, int age_p,int phone_p,String addres_p,String sickcondition,String reservedate
 , //String patients_name,
      int num_bill
      ) async {
    var response =await curd.postData(AppLinks.patients , {
      "patientName": patientName,
      "age_p": age_p.toString(),
      "phone_p": phone_p.toString(),
      "addres_p": addres_p,
      "sickcondition": sickcondition,
      "reservedate": reservedate,
     // "patientName": patients_name,
      "bill_num": num_bill.toString(),



    });
    print({
      "patientName": patientName,
      "age_p": age_p,
      "phone_p": phone_p,
      "addres_p": addres_p,
      "sickcondition": sickcondition,
      "reservdate": reservedate,
      //"patients_name": patientName,
      "bill_num": num_bill

    });
    print("Response result: $response");
    return  response;

  }
}