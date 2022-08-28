import 'package:flutter/material.dart';
import 'package:onecall/widgets/circle_button.dart';

class CartScreen extends StatelessWidget {

static String screenName = "/cart";


  @override
  Widget build(BuildContext context){
    return Scaffold(
     
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: CircleButton(icon: Icons.arrow_back_ios_new_outlined, function: (){
              
            }),
          )
        ],
      ),
    );
  }
}