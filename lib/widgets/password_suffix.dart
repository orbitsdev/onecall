import 'package:flutter/material.dart';
import 'package:onecall/constant/ui.dart';

class PasswordSuffix extends StatelessWidget {
final IconData icon;
final Color?  colors;
  const PasswordSuffix({
    Key? key,
    required this.icon,
    this.colors,
  }) : super(key: key);
  @override
  Widget build(BuildContext context){
    return  Icon(icon, color: colors ,);
  }
}
