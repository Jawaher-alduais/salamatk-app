import 'package:app01/core/Class/statusrequest.dart';

handlingData(response){
    if(response is StatusRequest){ // StatusRequest
      return response ;
    }else { // map
     return StatusRequest.success;
    }
}