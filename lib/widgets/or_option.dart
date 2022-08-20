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
                                Flexible(child: HorizontalLine(width: MediaQuery.of(context).size.width , bgcolor: Colors.black.withOpacity(0.12),), ),
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 4,),
                                child: Text('Or', style: bodytext_h3,)),
                                Flexible(child: HorizontalLine(width: MediaQuery.of(context).size.width , bgcolor: Colors.black.withOpacity(0.12),), ), 
                            ],
                          ),
                        );
  }
}