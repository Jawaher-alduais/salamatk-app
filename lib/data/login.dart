
import '../../../core/Class/curdRequest.dart';
import '../../../linkapi.dart';


class LoginData{

  Crud curd ;

  LoginData(this.curd);

  postData( String password, String email ) async {
    var response =await curd.postData(AppLinks.server , {
      "password": password,
      "email": email,


    });
    return  response.fold((l)=>1, (r)=>1);

  }
}