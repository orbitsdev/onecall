import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'package:onecall/assistant/assistant.dart';
import 'package:onecall/constant/ui.dart';
import 'package:onecall/helperwidgets/vertical_space.dart';
import 'package:onecall/onboard/boarddot.dart';
import 'package:onecall/sample/sampledata.dart';

class BoardingContent extends StatelessWidget {
 
  final String imagepath;
  final String title;
  final String subtitle;
  final int id;

  const BoardingContent({super.key, required this.imagepath, required this.title, required this.subtitle, required this.id});
 


  @override
  Widget build(BuildContext context){
    return Container(
      child: Column(
        children: [

           
 Lottie.asset(Assistant().fromImages(imagepath), fit: BoxFit.cover, height: MediaQuery.of(context).size.height * 0.40 ),
            VerticalSpace(value: 16),
            Center(
              child: Container(

                height: 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(onboardingPage.length, (index) => Boarddot( active: index ==  id ? true : false),)
                ),
              ),
            ),
            VerticalSpace(value: 16),
            Container(
           padding: EdgeInsets.symmetric( horizontal: 24,),
              child: Column(
                children: [
                  Text(title, style: bodytext_h1.copyWith(color: Colors.black.withOpacity(0.75), fontSize: 32, fontWeight: FontWeight.bold , ),textAlign: TextAlign.center,),
                  VerticalSpace(value: 12),
                  Text(subtitle, style: bodytext_h3.copyWith(color: Colors.black.withOpacity(0.50)), textAlign: TextAlign.center,),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
