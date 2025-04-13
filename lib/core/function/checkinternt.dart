
import 'dart:io';

checkInternet() async {

  try{
    var resualtInter= await InternetAddress.lookup("google.com");
    if (resualtInter.isNotEmpty && resualtInter[0].rawAddress.isNotEmpty){
      return true ;
    }

  }
  on SocketException catch(_){
    return false;
  }
}