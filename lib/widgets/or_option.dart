import 'package:flutter/material.dart';
import 'package:onecall/constant/ui.dart';
import 'package:onecall/widgets/horizontal_line.dart';

class OrOption extends StatelessWidget {
const OrOption({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Container(
                          //color: Colors.red,
                          child: Row(
                            crossAxisAlignment:  CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                                Flexible(child: HorizontalLine(width: MediaQuery.of(context).size.width , bgcolor:black_12,), ),
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 26,),
                                child: Text('Or'.toUpperCase(), style: bodytext_h2.copyWith(fontWeight: FontWeight.w600, color: black_50),)),
                                Flexible(child: HorizontalLine(width: MediaQuery.of(context).size.width , bgcolor:black_12,), ), 
                            ],
                          ),
                        );
  }
}