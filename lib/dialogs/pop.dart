import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onecall/constant/ui.dart';
import 'package:onecall/helperwidgets/vertical_space.dart';

class Pop {

  static showLoginProgress(){

    Get.dialog(Dialog(
      child: Container(
        padding: EdgeInsets.all(12),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircularProgressIndicator(strokeWidth: 2, color:  primary,),
            
          ],
        ),
      ),
    ));

  }

}