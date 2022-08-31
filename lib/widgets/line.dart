import 'package:flutter/material.dart';

import 'package:onecall/constant/ui.dart';

class Line extends StatelessWidget {

 final double? value;
 final Color? color;
  const Line({
    Key? key,
    this.value,
    this.color,
  }) : super(key: key);
 
  @override
  Widget build(BuildContext context){
    return Divider(
      thickness: value?? 1,
      color: color ?? greybutton,
    );
  }
}
