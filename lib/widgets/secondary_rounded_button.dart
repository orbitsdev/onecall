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
          shape: StadiumBorder(),
          primary: secondary,
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 14),
          textStyle: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
      onPressed: () {
        funtion();
      },
      child: Text(
        label,
        style: bodytext_h1.copyWith(fontWeight: FontWeight.normal, color: Colors.black.withOpacity(0.50)),
      ),
    );
  }
}
