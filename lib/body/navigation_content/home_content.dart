import 'package:flutter/material.dart';
import 'package:onecall/assistant/assistant.dart';
import 'package:onecall/constant/ui.dart';
import 'package:onecall/helperwidgets/horizontal_space.dart';
import 'package:onecall/helperwidgets/vertical_space.dart';

class HomeContent extends StatelessWidget {
const HomeContent({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: screenPadding,),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(16),
            height: 90,
            
            decoration: BoxDecoration(
            // image: DecorationImage(
            //   fit: BoxFit.cover,
            //   image: AssetImage(Assistant().fromImages('maprec.png',), ) ),
            color: greybutton,
              borderRadius: BorderRadius.circular(12)
            ),
            child: Row(
              children: [
                Icon(Icons.location_on,size: 24, color: Colors.amber,),
                HorizontalSpace(value: 8),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Your delivery address', style: bodytext_h3.copyWith(color: black_25),),
                      VerticalSpace(value: 1),
                      Text('Salem St kalawag 2 Isulan sultan kudarat midnano, Philippies', style: bodytext_h3.copyWith(color: black_75),),
                      
                    ],
                  ),
                ),
                Icon(Icons.arrow_forward_ios_outlined ,size: 24, color: black_25,),

              ],
            ),
          )
        ],
      ),
    );
  }
}