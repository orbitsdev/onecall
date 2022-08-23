import 'package:flutter/material.dart';

import 'package:onecall/constant/ui.dart';

class StepsText extends StatelessWidget {


final String stepnumber;
final String text;
  const StepsText({
    Key? key,
    required this.stepnumber,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return   ListTile(leading: Text(stepnumber, style: bodytext_h1.copyWith(color: primary, fontWeight: FontWeight.bold),), title: Text(text, style: bodytext_h2.copyWith(color: black_75,),)  );
;
  }
}
