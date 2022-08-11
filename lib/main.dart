import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onecall/auth/auth_controller.dart';
import 'package:onecall/auth/error_screen.dart';
import 'package:onecall/auth/home_screen.dart';
import 'package:onecall/auth/signin_screen.dart';
import 'package:onecall/constant/controllers.dart';
import 'package:onecall/loaders/loading_screen.dart';
import 'package:onecall/onboard/onboarding_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp().then((value) { 

    Get.put(AuthController(), permanent: true);


  });
  final pref =  await SharedPreferences.getInstance();
  final isOnBoardingFinish = pref.getBool("is_onboarding_finish") ?? false;  
  runApp( const OneCall());
}





class OneCall extends StatelessWidget {
 const OneCall({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home:
      // authcontroller.authStateHandler(),
      // LoadingScreen(),
      //ErrorScreen(),
      OnboardingScreen(),
      getPages: [
        GetPage(name: SigninScreen.screenName,  page: ()=> const SigninScreen()),
        GetPage(name: HomeScreen.screenName , page: ()=> const HomeScreen()),
      ],
    );
  }
}