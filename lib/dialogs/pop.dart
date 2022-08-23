import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:onecall/assistant/assistant.dart';
import 'package:onecall/constant/ui.dart';
import 'package:onecall/helperwidgets/horizontal_space.dart';
import 'package:onecall/helperwidgets/vertical_space.dart';
import 'package:onecall/widgets/pop_up_button.dart';
import 'package:onecall/widgets/starting_button.dart';

class Pop {

  static showLoginProgress(BuildContext context, [String message = "Please wait while we process this request", String progresspath="62266-walking-orange (1).json" ]){

    showDialog(
      context: context, builder: (context){
      return Dialog(
        elevation: 0,
        backgroundColor: Colors.transparent,
        child: Container(

          padding: EdgeInsets.only(bottom: 16, right: 16, left: 16, top: 12),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
             Container(
                  height: 200,
                
                  child: Lottie.asset(
                    Assistant().fromImages(progresspath),
                    fit: BoxFit.cover,
                  ),
                ),
                Text(message, style: bodytext_h2.copyWith(color: purewhite, fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
               VerticalSpace(value: 16),
           
            ],
          ),
        ),
      );
    });

  }


  static showError( BuildContext context, [String title ="Something went wrong " ,String bodytext = "An unexpected error occured. Please try again" ,  String errorimage = '101962-oh-no.json' ]){

    showDialog(
      
      context: context, builder: (context){
      return Dialog(
        child: Container(
          
          padding: EdgeInsets.only(bottom: 16, right: 16, left: 16, top: 12),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
             Container(
                  height: 200,
                
                  child: Lottie.asset(
                    Assistant().fromImages(errorimage),
                    fit: BoxFit.cover,
                  ),
                ),
                Text(title, style: bodytext_h1.copyWith(color: black_75, fontWeight: FontWeight.bold),),
              VerticalSpace(value:8),
              Text(bodytext, style: bodytext_h3.copyWith(color: black_75), textAlign:TextAlign.center ,),
              
              VerticalSpace(value: 16),
              InkWell(
                onTap: (){
                  Get.back();
                },
                child: PopUpButton(label: 'Ok'.toUpperCase(), textcolor: purewhite, bgcolor: primary,))
            ],
          ),
        ),
      );
    });

  }

}