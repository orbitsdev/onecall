import 'package:flutter/material.dart';

import 'package:onecall/constant/ui.dart';
import 'package:onecall/sample/sampledata.dart';

class RestaurantTabs extends StatelessWidget {

final TabController tabController;
final List<String> categories;
  const RestaurantTabs({
    Key? key,
    required this.tabController,
    required this.categories,
  }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return  SliverToBoxAdapter(
              child: Container(
                height: 50,
                padding: EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                color: purewhite,
                child: TabBar(
                    isScrollable: true,
                    unselectedLabelColor:black_25,
                    indicatorColor: primary,
                    labelColor: primary,
                    labelStyle: bodytext_h2.copyWith(
                        color: black_75, fontWeight: FontWeight.w700),
                    controller: tabController,
                    tabs: categories
                        .map((e) => Tab(
                              text: e,
                            ))
                        .toList()),
              ),
            );

  }
}
