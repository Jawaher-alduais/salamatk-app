import 'package:dartz/dartz.dart';

import '../core/Class/curdRequest.dart';
import '../core/Class/statusrequest.dart';
import '../linkapi.dart';

class Booking1Data {
  Crud curd;
  Booking1Data(this.curd);

  Future<Either<StatusRequest, Map>> postData(
      String patientName,
      int age_p,
      int phone_p,
      String addres_p,
      String chronicdiseases,
      String sickcondition,
      String reservedate,
      int num_bill,
      ) async {
    var response = await curd.postData(AppLinks.patients, {
      "patientName": patientName,
      "age_p": age_p.toString(),
      "phone_p": phone_p.toString(),
      "addres_p": addres_p,
      "chronicdiseases": chronicdiseases,
      "sickcondition": sickcondition,
      "reservedate": reservedate,
      "num_bill": num_bill.toString(),
    });

    print("✅ البيانات المرسلة:");
    print({
      "patientName": patientName,
      "age_p": age_p,
      "phone_p": phone_p,
      "addres_p": addres_p,
      "chronicdiseases": chronicdiseases,
      "sickcondition": sickcondition,
      "reservdate": reservedate,
      "num_bill": num_bill,
    });

    print("📥 Response result: $response");
    return response;
  }
}
