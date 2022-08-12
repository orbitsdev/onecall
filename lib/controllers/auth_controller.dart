import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:onecall/auth/home_screen.dart';
import 'package:onecall/auth/signin_screen.dart';
import 'package:onecall/constant/firebaseconstant.dart';
import 'package:onecall/dialogs/pop.dart';
import 'package:onecall/models/user.dart' as muser;
import 'package:onecall/onboard/onboarding_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthController extends GetxController {
  static AuthController instance = Get.find();
  var user = muser.User().obs;

  late GoogleSignIn googleSign;
  var isSignIn = false.obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() async {
    // googleSign = GoogleSignIn();
    // ever(isSignIn, handleAuthStateChange);
    // isSignIn.value = await firebaseauth.currentUser != null;
    // firebaseauth.authStateChanges().listen((event) {
      
    //   isSignIn.value = event != null;
    // });
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void handleAuthStateChange(isLogIn) async {
    if (isLogIn) {
      Get.offAll(() => HomeScreen());
    } else {
      final prefs = await SharedPreferences.getInstance();
      final bool isboardingFinish =
          prefs.getBool('isOnBoardingFinish') ?? false;

      if (isboardingFinish) {
        Get.offAll(() => SigninScreen());
      } else {
        OnboardingScreen();
      }
    }
  }

  void sigInWithGoogle() async {
    Pop.showLoginProgress();
    GoogleSignInAccount? googleAcount = await googleSign.signIn();

    if (googleAcount == null) {
      Get.back();
    } else {
      GoogleSignInAuthentication googleSignInAuthentication =
          await googleAcount.authentication;
      OAuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleSignInAuthentication.accessToken,
        idToken: googleSignInAuthentication.idToken,
      );

      await firebaseauth.signInWithCredential(credential);

      Get.back();
    }
  }

  void logout() async {
    try {
      await googleSign.disconnect().whenComplete(() async {
        await firebaseauth.signOut();
      });
    } catch (e) {
      print(e.toString());
    }
  }


  void removePrefference() async {
      final pref =  await SharedPreferences.getInstance();
             pref.setBool("isOnBoardingFinish", false);

  }
}
