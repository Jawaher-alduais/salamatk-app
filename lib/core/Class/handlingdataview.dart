import 'package:app01/core/Class/statusrequest.dart';
import 'package:flutter/cupertino.dart';
import 'package:lottie/lottie.dart';

import '../Constant/Images.dart';

class HandlingDataView extends StatelessWidget { //التعامل مع request
  final StatusRequest statusRequest;
  final Widget widget;
  const HandlingDataView({super.key, required this.statusRequest, required this.widget});

  @override
  Widget build(BuildContext context) {
    return statusRequest== StatusRequest.loding
      ?  Center(child: Lottie.asset(AppImagesAsset.LottieLoding))
    : statusRequest == StatusRequest.offlinefailuer
      ?  Center(child:Lottie.asset(AppImagesAsset.Lottieoffline))
        : statusRequest == StatusRequest.serverfailuer
        ?  Center(child:Lottie.asset(AppImagesAsset.Lottieserver))
        : statusRequest == StatusRequest.failuer
        ?  Center(child: Lottie.asset(AppImagesAsset.Lottienodata))
        :widget;
  }
}



class HandlingDataRecqust extends StatelessWidget { //التعامل مع request
  final StatusRequest statusRequest;
  final Widget widget;
  const HandlingDataRecqust({super.key, required this.statusRequest, required this.widget});

  @override
  Widget build(BuildContext context) {
    return statusRequest== StatusRequest.loding
        ?  Center(child: Lottie.asset(AppImagesAsset.LottieLoding))
        : statusRequest == StatusRequest.offlinefailuer
        ?  Center(child:Lottie.asset(AppImagesAsset.Lottieoffline))
        : statusRequest == StatusRequest.serverfailuer
        ?  Center(child:Lottie.asset(AppImagesAsset.Lottieserver))
        :widget;
  }
}
