import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:onecall/assistant/assistant.dart';
import 'package:onecall/constant/ui.dart';
import 'package:onecall/helperwidgets/horizontal_space.dart';
import 'package:onecall/helperwidgets/vertical_space.dart';

class Pop {

  static showLoginProgress({String message = "Pleas wait while we process this request"}){

    Get.dialog(Dialog(
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: Container(
        padding: EdgeInsets.all(12),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            
            Container(
              height: 100,
              child: Lottie.asset(Assistant().fromImages('22499-stay-healthy-eat-healty.json', ), fit: BoxFit.contain),

            ),
            HorizontalSpace(value: 24),
            Text(message, style: bodytext_h1.copyWith(color: purewhite,fontWeight: FontWeight.w700 ), textAlign: TextAlign.center ),
            
          ],
        ),
      ),
    ));

  }

}