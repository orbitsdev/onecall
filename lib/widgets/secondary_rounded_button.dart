import 'package:flutter/material.dart';
import 'package:onecall/constant/ui.dart';

class SecondaryRoundedButton extends StatelessWidget {
  final Function funtion;
  final String label;
  const SecondaryRoundedButton({
    Key? key,
    required this.funtion,
    required this.label,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12)
          ),
          primary: secondary,
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 14),
          textStyle: TextStyle(fontSize: 30, fontWeight: FontWeight.w700)),
      onPressed: () {
        funtion();
      },
      child: Icon(Icons.arrow_back, color: Colors.black.withOpacity(0.75)),
      
    );
  }
}
