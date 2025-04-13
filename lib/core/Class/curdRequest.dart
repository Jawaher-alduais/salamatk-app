import 'dart:convert';

import 'package:app01/core/Class/statusrequest.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import '../function/checkinternt.dart';

class Crud {


  Future<Either<StatusRequest, Map>> postData(String linkurl, Map data) async {
    try {
      if (await checkInternet()) {
        var response = await http.post(
          Uri.parse(linkurl),
          body: data,
          headers: {
            "Content-Type": "application/x-www-form-urlencoded",
          },
        );

        print("🧾 response body: ${response.body}");

        if (response.statusCode == 200 || response.statusCode == 201) {
          Map responseBody = jsonDecode(response.body);
          return Right(responseBody);
        } else {
          return const Left(StatusRequest.serverfailuer);
        }
      } else {
        return const Left(StatusRequest.offlinefailuer);
      }
    } catch (e) {
      print("❌ Exception: $e");
      return const Left(StatusRequest.serverException);
    }
  }
}
