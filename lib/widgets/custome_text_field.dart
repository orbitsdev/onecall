import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:onecall/widgets/password_suffix.dart';

import '../constant/ui.dart';


class CustomeTextField extends StatelessWidget {

  final TextEditingController controller;
  final IconData icon;
  final Function function;
  final String label;
  final TextInputAction textinputaction;
  final bool obscure;
  final TextInputType inputype;
  final bool passwordtype;
  final Function? passwordtoggle; 
  const CustomeTextField({
    Key? key,
    required this.controller,
    required this.icon,
    required this.function,
    required this.label,
    required this.textinputaction,
    required this.obscure,
    required this.inputype,
    required this.passwordtype,
    this.passwordtoggle,
  }) : super(key: key);
 
   



  @override
  Widget build(BuildContext context){
    return  Row(
                  children: 
                  [
                    Container(

                        margin: EdgeInsets.only(right: 12),
                        height: 50,
                        child: Center(
                            child: Icon(
                         icon,
                          color: black_25,
                        ))),
                    Flexible(
                        child: TextFormField(
                          obscureText:obscure ,
                          controller: controller,
                          autofocus: false,
                          keyboardType: inputype,
                          textInputAction: textinputaction,
                        decoration: InputDecoration(

                          filled: true,
                          contentPadding: EdgeInsets.only(left: 0),
                          fillColor: Colors.transparent,
                          labelText: label,
                          labelStyle: bodytext_h2.copyWith(color: primary, fontWeight: FontWeight.w500),
                          
                          suffixIcon: passwordtype ? IconButton(onPressed: (){
                            passwordtoggle!();
                          }, icon: obscure ?  PasswordSuffix(icon: Icons.remove_red_eye_outlined, colors: black_25,) :  PasswordSuffix(icon: Icons.remove_red_eye,colors: black_50)) :  controller.text.isEmpty ? null: IconButton(onPressed: ()=> function(controller), icon: Icon(Icons.close, color: black_75, )),
                          enabledBorder:  UnderlineInputBorder(
                            
                              borderSide: BorderSide(color: black_12,
                              width: 1.5
                              ),
                              
                              ),
                              focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: primary,
                              width: 1.5
                              ),
                              
                              ),
                              ),
                            
                      style: bodytext_h2.copyWith(color: black_75, fontWeight: FontWeight.bold),
                    )),
                  ],
                );
  }
}
