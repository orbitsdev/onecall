import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onecall/assistant/assistant.dart';
import 'package:onecall/auth/signin_screen.dart';
import 'package:onecall/auth/signup_screen.dart';
import 'package:onecall/constant/ui.dart';
import 'package:onecall/dialogs/pop.dart';
import 'package:onecall/helperwidgets/vertical_space.dart';
import 'package:onecall/widgets/horizontal_line.dart';
import 'package:onecall/widgets/or_option.dart';
import 'package:onecall/widgets/starting_button.dart';
import 'package:onecall/widgets/withlogo_button.dart';

class StartingScreen extends StatelessWidget {
  const StartingScreen({Key? key}) : super(key: key);
  static String screenName = "/starting";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                child: Center(
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.30,
                    child: Image.asset(
                      Assistant().fromImages(
                        'playstore2.png',
                      ),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
 
              Container(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Material(
                        color: Colors.transparent,
                        child: InkWell(
                            onTap: () {
                              Get.to(()=> SignupScreen(), transition: Transition.rightToLeft);
                            },
                            child: StartingButton(
                              label: 'Start an account',
                              bgcolor: primary,
                              textcolor: Colors.white,
                            ))),
                    VerticalSpace(value: 14),
                    Material(
                        color: Colors.transparent,
                        child: InkWell(
                            onTap: () {
                              Get.to(() => SigninScreen(),
                                  transition: Transition.leftToRight);
                            },
                            child: StartingButton(
                              label: 'Login',
                              bgcolor: greybutton,
                              textcolor: Colors.black.withOpacity(0.75),
                            ))),
                    VerticalSpace(value: 8),
                    VerticalSpace(value:8),
                  
                    VerticalSpace(value:12),
                    Text(
                      'Earnded Gawad award 2021 and the must trusted food deliver business in the philippines with high ratings in google playsotre  ',
                      textAlign: TextAlign.center,
                      style: bodytext_h3.copyWith(
                        color: greytext,
                        height: 1.1,
                      ),
                    )
                  ],
                ),
                padding:
                    EdgeInsets.only(top: 12, right: 24, left: 24, bottom: 24),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
