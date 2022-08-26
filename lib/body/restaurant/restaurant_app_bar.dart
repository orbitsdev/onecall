import 'package:flutter/material.dart';
import 'package:onecall/assistant/assistant.dart';
import 'package:onecall/constant/ui.dart';
import 'package:onecall/helperwidgets/horizontal_space.dart';
import 'package:onecall/helperwidgets/vertical_space.dart';
import 'package:onecall/widgets/circle_button.dart';
import 'package:onecall/widgets/notification_icon.dart';

class RestaurantAppBar extends StatelessWidget {
const RestaurantAppBar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return SliverAppBar(
            backgroundColor: purewhite,
            automaticallyImplyLeading: false,
              leading: null,
            floating: true,
            expandedHeight: MediaQuery.of(context).size.height * 0.35,
            title: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleButton( bgcolor: Colors.black.withOpacity(0.5),
                    icon: Icons.arrow_back_ios_rounded, function:  (){
                    
                  },),
                  Row(
                    children: [
                        NotificationIcon(function: (){}, icon: Icons.shopping_cart_outlined , bgcolor: Colors.black.withOpacity(0.5),),
                        HorizontalSpace(value: 8),
                        NotificationIcon(function: (){}, icon: Icons.notifications_outlined  , bgcolor: Colors.black.withOpacity(0.5),),
                    ],
                  )
                ],
              ),
            ),
            flexibleSpace: FlexibleSpaceBar(
              stretchModes: [
                StretchMode.zoomBackground,
                StretchMode.blurBackground
              ],
              background:Stack(
              
            clipBehavior: Clip.none,
              fit: StackFit.expand,
                alignment: Alignment.center,
                children: [
                   Hero(
                tag: 'f1',
                child: Image.asset(
                  Assistant().fromImages('f1.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: 100,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      end: Alignment.bottomCenter,
                      begin:Alignment.topCenter ,
                      colors: [
                          Colors.black.withOpacity(0.3),
                          Colors.transparent
              
                      ])
                  ),
                ),
              ),

              Positioned(
                right: 16,
                left: 16,
                bottom: - MediaQuery.of(context).size.height * 0.30 /4  ,
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.19,
                  padding: EdgeInsets.only(right: 8, left: 8, top: 12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(60), topRight: Radius.circular(60)),
                color: purewhite,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      
                      padding: EdgeInsets.symmetric(vertical: 4, horizontal: 6),
                      decoration: BoxDecoration(
                        border:Border.all(
                          color: primary
                        ),
                        color: primary.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(4)
                      ),
                      child: Text(' Business Merchants',  style : bodytext_h5.copyWith(color: primary,),),
                    ),
                    VerticalSpace(value: 8),
                    Text('Jolibbes Isulan Sultan Kudarat', style: bodytext_h2.copyWith(color: black_75, fontWeight: FontWeight.w700),),
                    VerticalSpace(value:2),
                    Container(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // Container(
                          //   height: 34,
                          //   child: Center(child: Icon(Icons.location_on,color: a_orannge,))),
                          Expanded(child: Text('299 st kalawa rpunde ball Isulan' , style: bodytext_h3.copyWith(color: black_75, height: 0), textAlign: TextAlign.center, )),
                        ],
                      ),
                    ),
                    // VerticalSpace(value: 2),
                    // Text('Distance 0.5KM', style: bodytext_h5.copyWith(color: black_50, ), textAlign: TextAlign.center,),

                  ],
                ),
              ))

                ],
              )
            ),
          );
  }
}