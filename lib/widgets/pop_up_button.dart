import 'package:flutter/material.dart';
import 'package:onecall/constant/ui.dart';

class PopUpButton extends StatelessWidget {

  final String label;
  final Color? bgcolor;
  final Color? textcolor;
  final double? height;
  const PopUpButton({
    Key? key,
    required this.label,
    this.bgcolor,
    this.textcolor,
    this.height,
  }) : super(key: key);
  @override
  Widget build(BuildContext context){
    return Ink(
      height: height ?? 50,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 12,),
      decoration: BoxDecoration(
        borderRadius: primaryradius,
      color: bgcolor ?? primary,
      // border: Border.all(width: 0.5, color: Colors.black.withOpacity(0.75))
      ),
      child: Center(child: Text(label, style: bodytext_h1.copyWith(fontWeight: FontWeight.w700, color: textcolor,)),)
    );
  }
}
