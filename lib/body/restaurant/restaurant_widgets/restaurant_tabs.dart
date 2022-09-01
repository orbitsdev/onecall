import 'package:flutter/material.dart';

import 'package:onecall/constant/controllers.dart';
import 'package:onecall/constant/ui.dart';
import 'package:onecall/models/restaurant.dart';
import 'package:onecall/sample/sampledata.dart';

class RestaurantTabs extends StatelessWidget {

final TabController tabController;
final Function function;
final List<CategoriesWithProduct> category;
  const RestaurantTabs({
    Key? key,
    required this.tabController,
    required this.function,
    required this.category,
  }) : super(key: key);
 
  @override
  Widget build(BuildContext context){
    return  TabBar(
      onTap: (value){
       // print(value);   
       function(value);
      },
        isScrollable: true,
        unselectedLabelColor:black_25,
        indicatorColor: primary,
        labelColor: primary,
        labelStyle: bodytext_h2.copyWith(
            color: black_75, fontWeight: FontWeight.w700),
        controller: tabController,
        tabs: category
            .map((e) => Tab(
                  text: e.name,
                ))
            .toList());

  }
}
