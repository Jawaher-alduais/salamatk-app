
import 'package:dartz/dartz.dart';

import '../../../core/Class/curdRequest.dart';
import '../../../linkapi.dart';
import '../core/Class/statusrequest.dart';


class SignUpData{

  Crud curd ;

  SignUpData(this.curd);



  Future<Either<StatusRequest, Map>>postData(String name_u , String password_u, String email_u , int phone_u) async {
    var response =await curd.postData(AppLinks.singup , {
      "name_u": name_u,
      "password_u": password_u.toString(),
      "email_u": email_u,
      "phone_u": phone_u.toString(),

    });

    print({
      "name_u": name_u,
      "password_u": password_u,
      "email_u": email_u,
      "phone_u": phone_u,


    });
    print("Response result: $response");
    return  response;

  }
}