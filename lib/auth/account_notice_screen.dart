
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:onecall/assistant/assistant.dart';
import 'package:onecall/constant/ui.dart';
import 'package:onecall/data_privacy_screen.dart';
import 'package:onecall/helperwidgets/vertical_space.dart';
import 'package:onecall/terms_and_condition_screen.dart';
import 'package:onecall/widgets/starting_button.dart';

class AccountNoticeScreen extends StatelessWidget {
  const AccountNoticeScreen({Key? key}) : super(key: key);
  static String screenName = "/accountnotice";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              child: Column(
                children: [
    
                    VerticalSpace(value: MediaQuery.of(context).size.height * 0.08),
                  Container(
                    height: 200,
                    child: SvgPicture.asset(
                      Assistant().fromImages(
                        'undraw_mobile_encryption_re_yw3o.svg',
                      ),
                      fit: BoxFit.contain,
                    ),
                  ),
                  Expanded(child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12 ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                           VerticalSpace(value: 8),
                           Text('Account Banned',style: bodytext_h1.copyWith(
                            color: black_75,
                            fontWeight: FontWeight.w700
                           ),),
                           VerticalSpace(value: 8),
                        Text('You have lost the ability to use one call services due to violation of the code conduct. ', style: bodytext_h2.copyWith(color: black_75 ),),
                           VerticalSpace(value: 8),
                         RichText(
                       
                        text: TextSpan(
                          
                        text: 'We understand this news may be upsetting. If you believe this is just a mistake. Read the ', style: bodytext_h2.copyWith(color: black_75,  height: 1.3),
                        children: [
                           TextSpan(
                            recognizer: TapGestureRecognizer()..onTap = (){
                              Get.to(()=> TermsAndConditionScreen(), transition: Transition.downToUp);
                            },
                            text: 'community guidelines', style: bodytext_h2.copyWith(color: primary,  ) 
                          ),
                          
                           TextSpan(
                            text: ' or message us on ', style: bodytext_h2.copyWith(color: black_75,  ),
                           
                          ),
                           TextSpan(
                            recognizer: TapGestureRecognizer()..onTap = (){
                              Get.to(()=> TermsAndConditionScreen(), transition: Transition.downToUp);
                            },
                            text: 'Facebook Page', style: bodytext_h2.copyWith(color: primary,  ) 
                          ),

                           TextSpan(
                            text: '.', style: bodytext_h2.copyWith(color: black_75,  ),
                           
                          ),

                          
                        ]
                      ),
                      
                      ),

                         
                      ],
                    ),
                  ))
                ],
              ),
            )
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Container(
          padding: EdgeInsets.all(screenPadding),
          child: Center(child: StartingButton(label: 'I understand', textcolor: purewhite,))
          ),
      ),
      
    );
  }
}
