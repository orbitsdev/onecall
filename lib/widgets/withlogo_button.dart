import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:onecall/assistant/assistant.dart';
import 'package:onecall/constant/ui.dart';
import 'package:onecall/helperwidgets/horizontal_space.dart';

class WithlogoButton extends StatelessWidget {

  final Function function;
  const WithlogoButton({
    Key? key,
    required this.function,
  }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: (){
          function();
        },
        child: Container(
          height: 60,
          decoration: BoxDecoration(
          color: purewhite,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            width: 2,
            
            color: Colors.black.withOpacity(0.75),
          )

          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(

                child: SvgPicture.asset(Assistant().fromImages('cdnlogo.com_google-icon.svg'), width: 24, height:24,),
              ),
              HorizontalSpace(value: 12),

              Text('Signin with google', style: bodytext_h1.copyWith(fontWeight: FontWeight.w700),),
            ],
          ),
        ),
      ),
    );
  }
}
