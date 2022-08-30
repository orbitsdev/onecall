import 'package:flutter/material.dart';
import 'package:onecall/assistant/assistant.dart';
import 'package:onecall/constant/ui.dart';
import 'package:onecall/helperwidgets/horizontal_space.dart';

class ExtraContent extends StatelessWidget {
const ExtraContent({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Container
                                                (

    
                                              
                                                  decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(4),
                                                    border: Border.all(
                                                      color: primary,
                                                      width: 1,
                                                    ),
                                                    color: greybg,
                                                  ),
                                                  margin: EdgeInsets.only(top: 4, right: 4, left: 0, bottom: 4),
                                                  child: Stack(
                                                    children: [
                                                      Padding(
                                                            padding: EdgeInsets.only( top: 4, right: 8, left:0 , bottom: 4 ),
                                                        child: Row(
                                                        mainAxisSize: MainAxisSize.min,
                                                        children: [
                                                          Container(
                                                            margin: EdgeInsets.only(left: 26),
                                                            height: 34,
                                                            width: 34,
                                                            decoration: BoxDecoration(
                                                           
                                                              borderRadius: BorderRadius.circular(4)
                                                            ),
                                                            child: Image.asset(Assistant().fromImages('f2.jpg',), fit: BoxFit.cover,)
                                                          ),HorizontalSpace(value: 4),
                                                          Text('Cheese dsadasdasdsad', style: bodytext_h3.copyWith(color: black_75),),
                                                        ],
                                                                                                          ),
                                                      ),

                                                    Positioned(
                                                      top: 0,
                                                      left: 0,
                                                      child: Container(
                                                        decoration: BoxDecoration(
                                                          borderRadius: BorderRadius.only(bottomRight: Radius.circular(12), bottomLeft: Radius.circular(2),  topRight: Radius.circular(2) ),
                                                        color: primary,
                                                        ),
                                                        height: 24,
                                                        width: 24,
                                                        child: Center(child: Icon(Icons.check_outlined, size: 16, color: purewhite),),

                                                      ),
                                                    )
                                                    ]
                                                  ),
                                                );
  }
}