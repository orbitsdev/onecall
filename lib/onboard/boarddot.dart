import 'package:flutter/material.dart';
import 'package:onecall/constant/ui.dart';

class Boarddot extends StatelessWidget {

  final bool active;
  const Boarddot({
    Key? key,
    required this.active,
  }) : super(key: key);

  @override
  Widget build(BuildContext context){


      if(active){
         return Container(
      margin: EdgeInsets.symmetric(horizontal: 4,),
      padding: EdgeInsets.all(3),
       decoration: BoxDecoration(
      color: Colors.white,
        border: Border.all(width: 1, color: primary.withOpacity(0.50)),
        borderRadius: BorderRadius.circular(12),
    
        ),
      child: Container(
        height: 12,
        width: 12,
        decoration: BoxDecoration(
        color: primary,
        borderRadius: BorderRadius.circular(12),
    
        ),
      ),
    );
  }else{
     return Container(
      margin: EdgeInsets.symmetric(horizontal: 4,),
      padding: EdgeInsets.all(3),
      
      child: Container(
        height: 12,
        width: 12,
        decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.08),
        borderRadius: BorderRadius.circular(12),
    
        ),
      ),
    );
  }
      
    
   
    // return Container(
    //   decoration: BoxDecoration(
    //     borderRadius: BorderRadius.all(Radius.circular(12)),
    //     border: Border.all(width: 1, color:  primary),
    //     color: active ? primary:  Colors.black.withOpacity(0.08),
    //   ),
    //   height: 12,width: 12, );
  }
}

