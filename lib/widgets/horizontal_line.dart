import 'package:flutter/material.dart';

class HorizontalLine extends StatelessWidget {

final double width;
final Color? bgcolor;
  const HorizontalLine({
    Key? key,
    required this.width,
    this.bgcolor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Container(
      width: width,
      height: 1.5,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
      color: bgcolor ?? Colors.black,
      ),
    );
  }
}
