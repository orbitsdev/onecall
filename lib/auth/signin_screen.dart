import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onecall/assistant/assistant.dart';
import 'package:onecall/controllers/auth_controller.dart';
import 'package:onecall/auth/home_screen.dart';
import 'package:onecall/constant/controllers.dart';
import 'package:onecall/constant/ui.dart';
import 'package:onecall/helperwidgets/horizontal_space.dart';
import 'package:onecall/helperwidgets/vertical_space.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({Key? key}) : super(key: key);

  static String screenName = "/signin";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          padding: EdgeInsets.all(24),
          child: Column(
            children: [
                      
              VerticalSpace(value: MediaQuery.of(context).size.height * 0.05 ),
              Container(

                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(20),
                child: Image.asset(
                  Assistant().fromImages("playstore2.png"),
                  width: 190,
                  height: 190,
                ),
              ),
              GestureDetector(
                onTap: (){
                    authcontroller.sigInWithGoogle();
                },
                child: Container(
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
                      Image.asset(
                        Assistant().fromImages("google.png"),
                        width: 34,
                        height: 34,
                      ),
                      HorizontalSpace(value: 6),
                      Text(
                        'Signin with google',
                        style: bodytext_h2.copyWith(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),

              
              ElevatedButton(onPressed: () async {
                 Get.offAll(()=> HomeScreen()); 
               }, child: Text('Explore')),
              
              ElevatedButton(onPressed: () async {
                  final pref =  await SharedPreferences.getInstance();
    pref.setBool("isOnBoardingFinish", false);
    print(pref.getBool('isOnBoardingFinish'));
               }, child: Text('Remove sharepre')),
            ],
          ),
        ),
      ),
    );
  }
}
