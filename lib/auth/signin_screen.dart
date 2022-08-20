import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:onecall/assistant/assistant.dart';
import 'package:onecall/constant/ui.dart';
import 'package:onecall/helperwidgets/horizontal_space.dart';
import 'package:onecall/helperwidgets/vertical_space.dart';
import 'package:onecall/widgets/horizontal_line.dart';
import 'package:onecall/widgets/login_textfield.dart';
import 'package:onecall/widgets/or_option.dart';
import 'package:onecall/widgets/withlogo_button.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({Key? key}) : super(key: key);
  static String screenName = "/signin";

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  void initState() {
    super.initState();
    email.addListener(listen);
    password.addListener(listen);
  }

  void listen() => setState(() {});
  
  void clearTextField(TextEditingController controller) =>  controller.clear();
  

  @override
  void dispose() {
    email.dispose();
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
              body: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: Form(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: mediaquery.height * 0.35,
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
                    'Login',
                    style: header_h1.copyWith(
                        color: black_75, fontWeight: FontWeight.w700),
                  ),
                  VerticalSpace(value: 24),
                  LoginTextfield(
                      controller: email,
                      icon: Icons.alternate_email,
                      function: clearTextField,
                      label: 'Email'),
                  VerticalSpace(value: 12),
                  LoginTextfield(
                      controller: password,
                      icon: Icons.lock_outline_rounded,
                      function: clearTextField,
                      label: 'Password'),
                  VerticalSpace(value: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: Text(
                          'Or',
                          style: bodytext_h2.copyWith(color: black_50),
                        ),
                      ),
                    ],
                  ),
                  VerticalSpace(value: 16),
                  Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        height: 60,
                        decoration: BoxDecoration(
                          color: primary.withOpacity(0.04),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              child: SvgPicture.asset(
                                Assistant()
                                    .fromImages('cdnlogo.com_google-icon.svg'),
                                width: 24,
                                height: 24,
                              ),
                            ),
                            HorizontalSpace(value: 12),
                            Text(
                              'Signin with google',
                              style: bodytext_h1.copyWith(
                                  fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        )),
      ))),
    );
  }
}
