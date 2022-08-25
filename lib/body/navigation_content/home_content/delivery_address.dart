import 'package:flutter/material.dart';
import 'package:onecall/constant/ui.dart';
import 'package:onecall/helperwidgets/horizontal_space.dart';
import 'package:onecall/helperwidgets/vertical_space.dart';

class DeliveryAddress extends StatelessWidget {
const DeliveryAddress({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Container(
            padding: EdgeInsets.all(16),
        
            
            decoration: BoxDecoration(
            // image: DecorationImage(
            //   fit: BoxFit.cover,
            //   image: AssetImage(Assistant().fromImages('maprec.png',), ) ),
            // gradient: LinearGradient(colors: [
            //   a_orannge.withOpacity(0.1),
            //   a_orannge.withOpacity(0.9),
            // ],
            // end: Alignment.centerLeft,
            // begin: Alignment.bottomRight          
            //   ),
            color:a_orannge.withOpacity(0.3),
              borderRadius: BorderRadius.circular(12)
            ),
            child: Row(
              children: [
                Icon(Icons.location_on,size: 34, color: a_red
                ,),
                HorizontalSpace(value: 8),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                        color: primary,
                          borderRadius: BorderRadius.circular(12)
                        ),
                        child: Text('Your delivery address', style: bodytext_h3.copyWith(color: a_yellow),)),
                      VerticalSpace(value: 1),
                      Text('Salem St kalawag 2 Isulan sultan kudarat midnano, Philippies', style: bodytext_h3.copyWith(color: black_75),),
                      
                    ],
                  ),
                ),

                ClipOval(
                  
                  child: Container(

                    child: Icon(Icons.arrow_forward_ios_outlined ,size: 24, color: purewhite,))),

              ],
            ),
          );
  }
}