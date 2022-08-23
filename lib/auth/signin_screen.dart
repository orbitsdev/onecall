import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:onecall/assistant/assistant.dart';
import 'package:onecall/auth/signup_screen.dart';
import 'package:onecall/constant/ui.dart';
import 'package:onecall/helperwidgets/horizontal_space.dart';
import 'package:onecall/helperwidgets/vertical_space.dart';
import 'package:onecall/widgets/horizontal_line.dart';
import 'package:onecall/widgets/custome_text_field.dart';
import 'package:onecall/widgets/or_option.dart';
import 'package:onecall/widgets/primary_rounded_button.dart';
import 'package:onecall/widgets/starting_button.dart';
import 'package:onecall/widgets/withlogo_button.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({Key? key}) : super(key: key);
  static String screenName = "/signin";

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  static String screenName = "/signin";
  TextEditingController phone = TextEditingController();
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
    phone.addListener(listen);
    password.addListener(listen);
  }

  void listen() => setState(() {});

  void clearTextField(TextEditingController controller) => controller.clear();

  @override
  void dispose() {
    phone.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
                      'undraw_eating_together_re_ux62.svg',
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
                        'Login',
                        style: header_h1.copyWith(
                            color: black_75, fontWeight: FontWeight.w700),
                      ),
                      VerticalSpace(value: 12),
                      CustomeTextField(controller: phone, icon: Icons.phone_android_rounded, function: clearTextField, label: 'Phone number', textinputaction: TextInputAction.next ,obscure: false, inputype: TextInputType.phone, passwordtype: false),
                     
                      VerticalSpace(value: 12),
                      // CustomeTextField(controller: password, icon: Icons.lock_outline_rounded, function: clearTextField, label: 'Password', textinputaction: TextInputAction.next ,obscure: isShowPassword, inputype: TextInputType.text, passwordtype:true , passwordtoggle: showPasswordToggle,),
                      
                      // VerticalSpace(value: 16),
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.end,
                      //   children: [
                      //     Text('Forgot Password?',
                      //         style: bodytext_h2.copyWith(color: primary)),
                      //   ],
                      // ),
                      VerticalSpace(value: 18),
                      Material(
                          child: InkWell(
                              onTap: () {},
                              child: StartingButton(
                                label: 'Login',
                                textcolor: purewhite,
                              ))),
                      Container(height: 50, child: OrOption()),
                      WithlogoButton(function: () {}, hasborder: false, label: 'Continue with google',),
                       Container(
                        height: 60,
                        color: Colors.red.withOpacity(0.02),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'New to onecall?',
                              style: bodytext_h2.copyWith(color: black_75),
                            ),
                            HorizontalSpace(value: 5),
                            GestureDetector(
                                onTap: () {
                                  Get.off(()=>  const SignupScreen());
                                },
                                child: Text(
                                  'Register',
                                  style: bodytext_h2.copyWith(
                                      color: primary,
                                      fontWeight: FontWeight.w600),
                                )),
                          ],
                        ),
                      )
                      
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
