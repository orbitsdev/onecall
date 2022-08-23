import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:onecall/assistant/assistant.dart';
import 'package:onecall/constant/constant.dart';
import 'package:onecall/constant/controllers.dart';
import 'package:onecall/constant/firebaseconstant.dart';
import 'package:onecall/constant/ui.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:onecall/helperwidgets/horizontal_space.dart';

class HomeScreen extends StatefulWidget {
const HomeScreen({ Key? key }) : super(key: key);

static String screenName= "/home";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
int _bottomNavIndex = 0;


void _onTap(int index) {
    setState((){
      _bottomNavIndex = index;
    });
  }


  @override
  Widget build(BuildContext context){
    return SafeArea(
      child: Scaffold(
       
        body: Column(
          children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24,),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                            Text('Hi Brian 👋', style: bodytext_h1.copyWith(color: black_75, fontWeight: FontWeight.w700 ),),
                            Text('Are you hungry?', style: bodytext_h3.copyWith(color: black_75 ),),
                      ],
                    ),

                    Row(children: [
            //               Container(
            //               height: 34,
            //               width: 34,
            //   decoration: BoxDecoration(
            //         borderRadius: BorderRadius.circular(34* 2),
            //   ),
            //   child: ClipOval(child: Image.asset(Assistant().fromImages('Rectangle 4.png',), fit: BoxFit.cover,)),
            // ),
            //HorizontalSpace(value: 4),
          IconButton(onPressed: (){}, icon: Icon(Icons.notifications_outlined, size: 32, color: black_25,),)
                    ],),
                  ],
                ),
              ),
             pages[_bottomNavIndex]
          ],
        ),
        floatingActionButton: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(60*2),
            boxShadow: [
              
              BoxShadow(
                color: primary.withOpacity(0.2),
                spreadRadius: 1,
                blurRadius: 3.0,
                offset: Offset(0, 3),
              ),
            ],
            color: primary.withOpacity(0.75),
          // gradient: LinearGradient(colors: [
          //   primary,
          //   Colors.amber,
          // ],
          // begin: Alignment.bottomCenter,
          // end: Alignment.topCenter
          // )
          ),
          height: 50,
          width: 50,
          child: Center(
            child: Icon(Icons.shopping_cart_outlined, size: 24, color: purewhite,),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: AnimatedBottomNavigationBar(
      
        icons: iconList,
        inactiveColor: black_25,
        activeColor: primary,
      
        activeIndex: _bottomNavIndex,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.sharpEdge,
        onTap: (index) => setState(() => _bottomNavIndex = index),
        //other params
       ),
      ),
    );
  }
}