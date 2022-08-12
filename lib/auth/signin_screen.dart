import 'package:flutter/material.dart';
import 'package:onecall/assistant/assistant.dart';

class SigninScreen extends StatefulWidget {
const SigninScreen({ Key? key }) : super(key: key);
  static String screenName = "/signin";

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  @override
  Widget build(BuildContext context){
    return SafeArea(
      child: Scaffold(
     
      body: SingleChildScrollView(
          child: Form(child: Column(
            children: [
              TextFormField(),
            ],
          )),
      )
    ));
  }
}