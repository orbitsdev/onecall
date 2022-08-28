import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:onecall/auth/account_notice_screen.dart';
import 'package:onecall/auth/otp_verification_screen.dart';
import 'package:onecall/auth/signup_screen.dart';
import 'package:onecall/auth/testsliver.dart';
import 'package:onecall/bindings/auth_binding.dart';
import 'package:onecall/body/cart_screen.dart';
import 'package:onecall/body/restaurant/restaurant_details_screen.dart';
import 'package:onecall/body/restaurant/resto_product_details_screen.dart';
import 'package:onecall/body/setup_information_for_google_screen.dart';
import 'package:onecall/body/setup_information_for_mobile_screen.dart';
import 'package:onecall/constant/ui.dart';
import 'package:onecall/controllers/assistant_controller.dart';
import 'package:onecall/data_privacy_screen.dart';
import 'package:onecall/starting_screen.dart';
import 'package:onecall/terms_and_condition_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:onecall/controllers/auth_controller.dart';
import 'package:onecall/auth/error_screen.dart';
import 'package:onecall/auth/home_screen.dart';
import 'package:onecall/auth/signin_screen.dart';
import 'package:onecall/constant/controllers.dart';
import 'package:onecall/loaders/loading_screen.dart';
import 'package:onecall/onboard/onboarding_screen.dart';

Future<void> main() async {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarIconBrightness: Brightness.dark,
    statusBarColor: purewhite,
  ));
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp().then((value) { 

    Get.put(AuthController(), permanent: true);
    Get.put(AssistantController(), permanent: true);


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
      theme: apptheme,
      debugShowCheckedModeBanner: false,
      home:
      CartScreen(),
      //RestoProductDetailsScreen(),
    //RestaurantDetailsScreen(),
     // Testsliver(),
    //AccountNoticeScreen(),
     // SetupInformationForMobileScreen(),
    //setup_information_for_google_screen(),
    //DataPrivacyScreen(),
      //TermsAndConditionScreen(),
    // SignupScreen(),
      //OtpVerificationScreen(),
     //SigninScreen(),
      //StartingScreen(),
     //OnboardingScreen(), 
      //isBoardingShowedOnce ? SigninScreen() :  OnboardingScreen()
//HomeScreen(),
      getPages: [
        GetPage(name: StartingScreen.screenName,  page: ()=> StartingScreen(),),
        GetPage(name: DataPrivacyScreen.screenName,  page: ()=> DataPrivacyScreen(),),
        GetPage(name: TermsAndConditionScreen.screenName,  page: ()=> TermsAndConditionScreen(),),
        GetPage(name: SigninScreen.screenName,  page: ()=> const SigninScreen(), binding: AuthBinding()),
        GetPage(name: SignupScreen.screenName,  page: ()=> const SignupScreen(), binding: AuthBinding()),
        GetPage(name: OtpVerificationScreen.screenName,  page: ()=> const OtpVerificationScreen(),),
        GetPage(name: setup_information_for_google_screen.screenName,  page: ()=> const setup_information_for_google_screen(),),
        GetPage(name: SetupInformationForMobileScreen.screenName,  page: ()=>  const SetupInformationForMobileScreen(),),
        GetPage(name: AccountNoticeScreen.screenName , page: ()=> const AccountNoticeScreen(), ),
        GetPage(name: HomeScreen.screenName , page: ()=> const HomeScreen(), binding: AuthBinding()),
        GetPage(name: RestaurantDetailsScreen.screenName , page: ()=> const RestaurantDetailsScreen(), binding: AuthBinding()),
        GetPage(name: RestoProductDetailsScreen.screenName , page: ()=> const RestoProductDetailsScreen(), binding: AuthBinding()),
        GetPage(name: CartScreen.screenName , page: ()=> CartScreen() , binding: AuthBinding()),
      ],
    );
  }
}
