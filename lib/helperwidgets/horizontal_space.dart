import 'package:flutter/material.dart';

class HorizontalSpace extends StatelessWidget {

  final double value;

  const HorizontalSpace({super.key, required this.value});

  @override
  Widget build(BuildContext context){
    return SizedBox(
      width: value,
    );
  }
}