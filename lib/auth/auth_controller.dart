

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:onecall/auth/error_screen.dart';
import 'package:onecall/auth/home_screen.dart';
import 'package:onecall/auth/signin_screen.dart';
import 'package:onecall/constant/firebaseconstant.dart';
import 'package:onecall/loaders/loading_screen.dart';



class AuthController extends GetxController {

  static AuthController instance = Get.find(); 
  final googleSignIn  =  GoogleSignIn();


  authStateHandler() {
    return StreamBuilder(stream: firebaseauth.authStateChanges(), builder: (context , snapshot){

      if(snapshot.connectionState ==  ConnectionState.waiting){
         return const LoadingScreen();
      }else if(snapshot.hasData){
        return HomeScreen();

      }else if(snapshot.hasError){
        return ErrorScreen(errormessage: snapshot.error.toString(),);
      }else{
        return SigninScreen();
      }
    },);
  }

  signInWithGoogle() async {

  final GoogleSignInAccount? googleUser = await googleSignIn.signIn();

  final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

  final credential = GoogleAuthProvider.credential(
    accessToken: googleAuth?.accessToken,
    idToken: googleAuth?.idToken,
  );

   return await FirebaseAuth.instance.signInWithCredential(credential);
   
    

  }


  signOut() async{
    await googleSignIn.disconnect();
    firebaseauth.signOut();
  }

  



}