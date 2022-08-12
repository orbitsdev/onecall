import 'package:flutter/material.dart';

import 'package:onecall/constant/ui.dart';

class StartingButton extends StatelessWidget {

  final String label;
  final Color? bgcolor;
  final Color? textcolor;

  const StartingButton({
    Key? key,
    required this.label,
    this.bgcolor,
    this.textcolor,
  }) : super(key: key);



  @override
  Widget build(BuildContext context){
    return Ink(
      height: 60,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 12,),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(12)),
      color: bgcolor ?? primary,
      // border: Border.all(width: 0.5, color: Colors.black.withOpacity(0.75))
      ),
      child: Center(child: Text(label, style: bodytext_h2.copyWith(fontWeight: FontWeight.bold, color: textcolor,)),)
    );
  }
}
