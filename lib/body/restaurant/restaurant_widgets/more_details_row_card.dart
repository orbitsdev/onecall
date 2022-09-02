import 'package:flutter/material.dart';
import 'package:onecall/constant/ui.dart';
import 'package:onecall/helperwidgets/horizontal_space.dart';

class MoreDetailsRowCard extends StatelessWidget {

  final IconData icon;
  final String text;
  final Color?  iconcolor;
  final Color? textcolor;
  const MoreDetailsRowCard({
    Key? key,
    required this.icon,
    required this.text,
    this.iconcolor,
    this.textcolor,
  }) : super(key: key);
  @override
  Widget build(BuildContext context){
    return Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(icon, color:  iconcolor ?? black_25 ,),  HorizontalSpace(value: 6),
                        Expanded(child: Text(text, style: bodytext_h3.copyWith(height: 1.3, color: textcolor ?? black_50),)
                        ),
                  
                      ],
                    );
  }
}
