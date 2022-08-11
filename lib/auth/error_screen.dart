import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:onecall/assistant/assistant.dart';
import 'package:onecall/auth/signin_screen.dart';
import 'package:onecall/constant/ui.dart';
import 'package:onecall/helperwidgets/horizontal_space.dart';
import 'package:onecall/helperwidgets/vertical_space.dart';

class ErrorScreen extends StatelessWidget { 

   String? errormessage;

   ErrorScreen({super.key, this.errormessage});



  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
         padding: EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
      
             VerticalSpace(value: MediaQuery.of(context).size.height * 0.10 ),
             Lottie.asset(Assistant().fromImages('95614-error-occurred.json'), width: 360, height: 360, ),
             Text('${errormessage} Erroe message will occur here', style: bodytext_h2.copyWith(color: Colors.black.withOpacity(0.75), height: 1.2 ),),
             VerticalSpace(value: 24),
               GestureDetector(
            onTap: (){ 
              Get.offAll(()=> SigninScreen());
              
            },
            child: Container(

              height: 50,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black.withOpacity(0.50), //                   <--- border color
                  width: 0.5,
                ),
                borderRadius: BorderRadius.circular(4),
              ),
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                
                  Text(
                    'Ok',
                    style: bodytext_h2.copyWith(fontWeight: FontWeight.w700, color: primary),
                  )
                ],
              ),
            ),
          )
          
            
          ],
        ),
      ),
    );;
  }
}