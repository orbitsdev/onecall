import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:onecall/assistant/assistant.dart';
import 'package:onecall/auth/signup_screen.dart';
import 'package:onecall/constant/ui.dart';
import 'package:onecall/dialogs/pop.dart';
import 'package:onecall/helperwidgets/horizontal_space.dart';
import 'package:onecall/helperwidgets/vertical_space.dart';
import 'package:onecall/widgets/starting_button.dart';
import 'package:pinput/pinput.dart';


class OtpVerificationScreen extends StatefulWidget {
  const OtpVerificationScreen({Key? key}) : super(key: key);
  static String screenName = "/screenName";

  @override
  State<OtpVerificationScreen> createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {
  late TextEditingController otpcodecontroller;

  @override
  void initState() {
    otpcodecontroller =  TextEditingController();
    super.initState();
  }
  @override
  void dispose() {
    otpcodecontroller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    var mediaquery = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: SafeArea(
        
        child: Scaffold(
          resizeToAvoidBottomInset: true,
          extendBodyBehindAppBar: true,
          appBar: AppBar(

              elevation: 0,
              backgroundColor: Colors.transparent,
              leading: InkWell(
                borderRadius: BorderRadius.circular(100),
                onTap: () {
                  Get.back();
                },
                child: Container(
                  height: 34,
                  width: 34,
                  child: Icon(
                    Icons.arrow_back_outlined,
                    color: primary,
                  ),
                ),
              )),
          body: SingleChildScrollView(
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                VerticalSpace(value: mediaquery.height * 0.10),
                Container(
                  height: mediaquery.height * 0.25,
                  child: SvgPicture.asset(
                    Assistant().fromImages(
                      'undraw_confirmed_re_sef7.svg',
                    ),
                    fit: BoxFit.contain,
                  ),
                ),
                Container(
                  padding: screen_default_padding,
                  child: Column(
                    children: [
                      Text(
                        'Verify your Phone number',
                        style: header_h1.copyWith(
                            color: black_75, fontWeight: FontWeight.w700, height: 0.99),
                            textAlign: TextAlign.center,
                      ),
                      VerticalSpace(value: 12),
                      Text(
                        'We have sent verification code to Your Mobile Number',
                        style: bodytext_h2.copyWith(color: black_75),
                        textAlign: TextAlign.center,
                      ),
                      VerticalSpace(value: mediaquery.height * 0.04),
                      Pinput(
                        defaultPinTheme:defaultPinTheme,
                        onCompleted: (value){
                          print(value);
                          Pop.showLoginProgress(context);
                        },
                        length: 6,
                        controller: otpcodecontroller,
                        keyboardType: TextInputType.phone,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                        // Without Validator
                        // If true error state will be applied no matter what validator returns
                        forceErrorState: true,
                        // Text will be displayed under the Pinput

                        /// ------------
                        /// With Validator
                        /// Auto validate after user tap on keyboard done button, or completes Pinput
                        pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
                        
                      ),
                      VerticalSpace(value: 24),
                      Text('Didn\'t you recieve any code?', style: bodytext_h2.copyWith(color: black_75),),
                      VerticalSpace(value: 8),
                      GestureDetector(
                        onTap: (){
                            Pop.showLoginProgress(context);
                           //Pop.showError(context);
                        },
                        child: Text('RESEND NEW CODE'.toUpperCase(), style: bodytext_h2.copyWith(color: primary , fontWeight: FontWeight.w800,),))
                      // StartingButton(
                      //   label: 'Submit',
                      //   textcolor: purewhite,
                      //   bgcolor: primary,
                      // ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          // floatingActionButton: Container(
          //   height: 90,
          //   color: Colors.red,
          // ),
        ),
      ),
    );
  }
}
