
import 'package:flutter/material.dart';

class VerticalSpace extends StatelessWidget {

 final double value;

  const VerticalSpace({super.key, required this.value});

  @override
  Widget build(BuildContext context){
    return SizedBox( height: value,);
  }
}