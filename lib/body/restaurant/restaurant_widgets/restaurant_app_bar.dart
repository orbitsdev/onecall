import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:onecall/assistant/assistant.dart';
import 'package:onecall/constant/ui.dart';
import 'package:onecall/helperwidgets/horizontal_space.dart';
import 'package:onecall/helperwidgets/vertical_space.dart';
import 'package:onecall/models/category_with_product.dart';
import 'package:onecall/models/restaurant.dart';
import 'package:onecall/widgets/circle_button.dart';
import 'package:onecall/widgets/notification_icon.dart';

class RestaurantAppBar extends StatelessWidget {

  final String name;
  final String restaurantId;
  final String image;
  final String address;
  final TabController tabcontroller;
  final Function tabarfunction;
  final List<CategoriesWithProduct> categoriesandproducts;

  const RestaurantAppBar({
    Key? key,
    required this.name,
    required this.restaurantId,
    required this.image,
    required this.address,
    required this.tabcontroller,
    required this.tabarfunction,
    required this.categoriesandproducts,
  }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return SliverAppBar(
            backgroundColor: purewhite,
            automaticallyImplyLeading: false,
              leading: null,
            floating: true,
            expandedHeight: MediaQuery.of(context).size.height * 0.38,
            title: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleButton( bgcolor: Colors.black.withOpacity(0.5),
                    icon: Icons.arrow_back_ios_rounded, function:  (){
                    Get.back();
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
                tag: restaurantId,
                child: Image.asset(
                  Assistant().fromImages(image),
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
                right: 0,
                left: 0,
                bottom: - MediaQuery.of(context).size.height *  0.03  ,
                child: Container(
                  constraints: BoxConstraints(
                    minHeight: Get.height * 0.15
                  ),
                  padding: EdgeInsets.only(right: 8, left: 15, top: 12 ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(40), topRight: Radius.circular(40)),
                  color: purewhite
                ),
                child: Text(name , style: bodytext_h1.copyWith(color: black_75, fontWeight: FontWeight.w700),),
              ))

                ],
              )
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(0),
              child: Container(
                width: Get.width,
                color: purewhite,
                child: TabBar(
                  onTap: (value){
                   // print(value);
                    tabarfunction(value);
                  },
                    isScrollable: true,
                    unselectedLabelColor:black_25,
                    indicatorColor: primary,
                    labelColor: primary,
                    labelStyle: bodytext_h2.copyWith(
                color: black_75, fontWeight: FontWeight.w700),
                    controller: tabcontroller,
                    tabs: categoriesandproducts
                .map((e) => Tab(
                      text: e.name,
                    ))
                .toList()),
              ),
            ),
          );
  }
}
