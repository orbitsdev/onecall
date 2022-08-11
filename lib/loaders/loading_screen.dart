import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:onecall/assistant/assistant.dart';
import 'package:onecall/constant/ui.dart';
import 'package:onecall/helperwidgets/vertical_space.dart';

class LoadingScreen extends StatelessWidget {
const LoadingScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      
      body: Center(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //VerticalSpace(value: MediaQuery.of(context).size.height * 0.05),
               Lottie.asset(Assistant().fromImages('82624-foodies.json'), width: 360, height: 360, ),
              // AnimatedTextKit(
              //     animatedTexts: [
              //       FadeAnimatedText('Loading..'),
              //       FadeAnimatedText('Loading..'),
              //       FadeAnimatedText('Loading..'),
              //     ],
                  
              //   ),
              
            ],
          ),
        ),
      ),
    );
  }
}