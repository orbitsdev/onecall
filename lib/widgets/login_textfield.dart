import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../constant/ui.dart';

class LoginTextfield extends StatelessWidget {

  final TextEditingController controller;
  final IconData icon;
  final Function function;
  final String label;

  const LoginTextfield({super.key, required this.controller, required this.icon, required this.function, required this.label});

  @override
  Widget build(BuildContext context){
    return  Row(
                  children: [
                    Container(
                        width: 34,
                        height: 50,
                        child: Center(
                            child: Icon(
                         icon,
                          color: black_25,
                        ))),
                    Flexible(
                        child: TextFormField(
                          controller: controller,
                          autofocus: false,
                      decoration: InputDecoration(
                          filled: true,
                          contentPadding: EdgeInsets.only(left: 0),
                          fillColor: Colors.transparent,
                          labelText: label,
                          labelStyle: bodytext_h2.copyWith(color: black_25),
                          suffixIcon: controller.text.isEmpty ? null: IconButton(onPressed: ()=> function(controller), icon: Icon(Icons.close, color: black_75, )),
                          enabledBorder:  UnderlineInputBorder(
                              borderSide: BorderSide(color: black_12,
                              width: 1.5
                              ),
                              
                              )),
                      style: bodytext_h1.copyWith(color: black_75, fontWeight: FontWeight.w700),
                    )),
                  ],
                );
  }
}