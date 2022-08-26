import 'package:flutter/material.dart';

import 'package:onecall/constant/ui.dart';

class NotificationIcon extends StatelessWidget {
  final Function function;
  final IconData icon;
  final Color? bgcolor;
  const NotificationIcon({
    Key? key,
    required this.function,
    required this.icon,
    this.bgcolor,
  }) : super(key: key);
  

  @override
  Widget build(BuildContext context){
    return ClipOval(
      child: Material(
        
                            color:bgcolor !=null ? bgcolor : Colors.transparent,
                            borderRadius: BorderRadius.circular(34*2),
                             child: Center(
                               child: InkWell(
                                splashColor:black_75 ,
                                onTap: (){
                                    function();
                                },
                                 child: Padding(
                                  padding: EdgeInsets.all(8),
                                   child: Stack(
                                     children: <Widget>[
                                       new Icon(icon, color: purewhite,),
                                       new Positioned(
                                         right: 0,
                                         child: new Container(
                                           padding: EdgeInsets.all(1),
                                           decoration: new BoxDecoration(
                                             color: Colors.red,
                                             borderRadius: BorderRadius.circular(6),
                                           ),
                                           constraints: BoxConstraints(
                                             minWidth: 12,
                                             minHeight: 12,
                                           ),
                                           child: new Text(
                                             '1',
                                             style: new TextStyle(
                                               color: Colors.white,
                                               fontSize: 8,
                                             ),
                                             textAlign: TextAlign.center,
                                           ),
                                         ),
                                       ),
                                       
                                     ],
                                   ),
                                 ),
                               ),
                             ),
                           ),
    );
  }
}
