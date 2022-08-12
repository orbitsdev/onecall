import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onecall/bindings/auth_binding.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:onecall/controllers/auth_controller.dart';
import 'package:onecall/auth/error_screen.dart';
import 'package:onecall/auth/home_screen.dart';
import 'package:onecall/auth/signin_screen.dart';
import 'package:onecall/constant/controllers.dart';
import 'package:onecall/loaders/loading_screen.dart';
import 'package:onecall/onboard/onboarding_screen.dart';

Future<void> main() async {

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp().then((value) { 

    Get.put(AuthController(), permanent: true);


  });

  final prefs = await SharedPreferences.getInstance();
  final bool isboardingFinish = prefs.getBool('isOnBoardingFinish') ?? false;
  print(isboardingFinish);



  runApp( OneCall(isBoardingShowedOnce:  isboardingFinish));
}





class OneCall extends StatelessWidget {
final bool isBoardingShowedOnce;
  const OneCall({
    Key? key,
    required this.isBoardingShowedOnce,
  }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: isBoardingShowedOnce ? SigninScreen() :  OnboardingScreen(),
      getPages: [
        GetPage(name: SigninScreen.screenName,  page: ()=> const SigninScreen(), binding: AuthBinding()),
        GetPage(name: HomeScreen.screenName , page: ()=> const HomeScreen(), binding: AuthBinding()),
      ],
    );
  }
}
