import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:onecall/assistant/assistant.dart';
import 'package:onecall/auth/signin_screen.dart';
import 'package:onecall/constant/ui.dart';
import 'package:onecall/data_privacy_screen.dart';
import 'package:onecall/dialogs/pop.dart';
import 'package:onecall/helperwidgets/horizontal_space.dart';
import 'package:onecall/helperwidgets/vertical_space.dart';
import 'package:onecall/terms_and_condition_screen.dart';
import 'package:onecall/widgets/or_option.dart';
import 'package:onecall/widgets/custome_text_field.dart';
import 'package:onecall/widgets/starting_button.dart';
import 'package:onecall/widgets/withlogo_button.dart';

class SignupScreen extends StatefulWidget {
   static String screenName = "/signup";
const SignupScreen({ Key? key }) : super(key: key);


  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
 

  TextEditingController email = TextEditingController();
  TextEditingController fullname = TextEditingController();
  TextEditingController password = TextEditingController();
  bool isShowPassword = false;

  @override
  void setState(VoidCallback fn) {

    if(mounted){
    super.setState(fn);
    }
  }

  void showPasswordToggle() {
    setState(() {
      isShowPassword = !isShowPassword; 
    
    });
    print(isShowPassword);
  }

  @override
  void initState() {
    super.initState();
    email.addListener(listen);
    fullname.addListener(listen);
    password.addListener(listen);
  }

  void listen() => setState(() {});

  void clearTextField(TextEditingController controller) => controller.clear();

  @override
  void dispose() {
    email.dispose();
    fullname.dispose();
    password.dispose();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context){
      var mediaquery = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: SafeArea(
        child: Scaffold(
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            leading: InkWell(
              borderRadius: BorderRadius.circular(100),
              onTap: (){
                Get.back();
              },
              child: Container(
                height: 34,
                width: 34,
                child:  Icon(Icons.arrow_back_outlined, color: primary,),
              ),
            )
          ),
          body: SingleChildScrollView(
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            child: Form(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: mediaquery.height * 0.25,
                  child: SvgPicture.asset(
                    Assistant().fromImages(
                      'undraw_office_snack_re_l162.svg',
                    ),
                    fit: BoxFit.contain,
                  ),
                ),
                Container(
                  padding: screen_default_padding,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Signup',
                        style: header_h1.copyWith(
                            color: black_75, fontWeight: FontWeight.w700),
                      ),
                      VerticalSpace(value: 12),
                      CustomeTextField(controller: email, icon: Icons.phone_android_rounded , function: clearTextField, label: 'Phone number', textinputaction: TextInputAction.next ,obscure: false, inputype: TextInputType.emailAddress, passwordtype: false),

                      VerticalSpace(value: 12),
                      CustomeTextField(controller: fullname, icon: Icons.person_outline , function: clearTextField, label: 'Full name', textinputaction: TextInputAction.next ,obscure: false, inputype: TextInputType.emailAddress, passwordtype: false),
                      VerticalSpace(value: 12),
                      //CustomeTextField(controller: password, icon: Icons.lock_outline_rounded, function: clearTextField, label: 'Password', textinputaction: TextInputAction.next ,obscure: isShowPassword, inputype: TextInputType.text, passwordtype:true , passwordtoggle: showPasswordToggle,),
                      
                      VerticalSpace(value: 16),
                      RichText(
                       
                        text: TextSpan(
                          
                        text: 'By signing up, you\'re agree to our ', style: bodytext_h3.copyWith(color: black_50,  height: 1.3),
                        children: [
                           TextSpan(
                            recognizer: TapGestureRecognizer()..onTap = (){
                              Get.to(()=> TermsAndConditionScreen(), transition: Transition.downToUp);
                            },
                            text: 'Terms & Condition ', style: bodytext_h3.copyWith(color: primary, height: 1.2) 
                          ),
                          TextSpan(
                            text: ' and ', style: bodytext_h3.copyWith(color: black_50,  height: 1.2),
                           
                          ),
                          TextSpan(
                            recognizer: TapGestureRecognizer()..onTap = (){
                              Get.to(()=> DataPrivacyScreen(), transition: Transition.downToUp);
                            },
                            text: 'Data Privacy ', style: bodytext_h3.copyWith(color: primary, height: 1.2) 
                          ),
                        ]
                      ),
                      
                      ),
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.start,
                      //   children: [
                      //     Text('B',
                      //         style: bodytext_h2.copyWith(color: primary)),
                      //   ],
                      // ),
                      VerticalSpace(value: 18),
                      
                      Material(
                          child: InkWell(
                              onTap: () {},
                              child: StartingButton(
                                label: 'Create account',
                                textcolor: purewhite,
                              ))),
                              
                      Container(height: 30, child: OrOption()),
                       WithlogoButton(function: () {}, hasborder: false, label: 'Continue with google',),
                      // Container(
                      //   height: 60,
                      //   color: Colors.red.withOpacity(0.02),
                      //   child: Row(
                      //     mainAxisAlignment: MainAxisAlignment.center,
                      //     children: [
                      //       Text(
                      //         'Continue with the existing account ',
                      //         style: bodytext_h2.copyWith(color: black_75),
                      //       ),
                      //       HorizontalSpace(value: 5),
                      //       GestureDetector(
                      //           onTap: () {
                      //             Get.off(()=>  const SignupScreen());
                      //           },
                      //           child: Text(
                      //             'Login',
                      //             style: bodytext_h2.copyWith(
                      //                 color: primary,
                      //                 fontWeight: FontWeight.w600),
                      //           )),
                      //     ],
                      //   ),
                      // )
                      Container(
                        height: 60,
                        color: Colors.red.withOpacity(0.02),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              ' Already have an account?',
                              style: bodytext_h2.copyWith(color: black_75),
                            ),
                            HorizontalSpace(value: 5),
                            GestureDetector(
                                onTap: () {
                                  Get.off(()=>  const SigninScreen());
                                },
                                child: Text(
                                  'Login',
                                  style: bodytext_h2.copyWith(
                                      color: primary,
                                      fontWeight: FontWeight.w600),
                                )),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )),
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