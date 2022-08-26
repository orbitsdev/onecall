import 'package:dynamic_height_grid_view/dynamic_height_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:onecall/assistant/assistant.dart';
import 'package:onecall/body/restaurant/restaurant_app_bar.dart';
import 'package:onecall/constant/ui.dart';
import 'package:onecall/helperwidgets/horizontal_space.dart';
import 'package:onecall/helperwidgets/vertical_space.dart';
import 'package:onecall/sample/sampledata.dart';
import 'package:onecall/widgets/notification_icon.dart';

class RestaurantDetailsScreen extends StatefulWidget {
  const RestaurantDetailsScreen({Key? key}) : super(key: key);
  static String screenName = "/restaurantdetails";

  @override
  State<RestaurantDetailsScreen> createState() =>
      _RestaurantDetailsScreenState();
}

class _RestaurantDetailsScreenState extends State<RestaurantDetailsScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: restocategory.length, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            RestaurantAppBar(),
            SliverToBoxAdapter(
              child: Container(
                height: 50,
                padding: EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                color: purewhite,
                child: TabBar(
                    isScrollable: true,
                    unselectedLabelColor: black_12,
                    indicatorColor: primary,
                    labelColor: black_75,
                    labelStyle: bodytext_h2.copyWith(
                        color: black_75, fontWeight: FontWeight.w700),
                    controller: _tabController,
                    tabs: restocategory
                        .map((e) => Tab(
                              text: e,
                            ))
                        .toList()),
              ),
            ),
            SliverDynamicHeightGridView(
        itemCount: 120,
        crossAxisCount: 3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        builder: (ctx, index) => Container(
          height: 200,
          color: Colors.red,
        )
      ),
//       SliverGrid(
//   gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
//     maxCrossAxisExtent: 200.0,
//     mainAxisSpacing: 10.0,
//     crossAxisSpacing: 10.0,
//     childAspectRatio: 4.0,
//   ),
//   delegate: SliverChildBuilderDelegate(
//     (BuildContext context, int index) {
//       return Container(
//         alignment: Alignment.center,
//         color: Colors.teal[100 * (index % 9)],
//         child: Text('grid item $index' * 50),
//       );
//     },
//     childCount: 20,
//   ),
// ),  
  // SliverFillRemaining(
  //   child: Container(
  //     height: 300,
  //     child: MasonryGridView.count(
        
  //             itemCount: 10,
  //             padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 10),
  //             // the number of columns
  //             crossAxisCount: 3, 
  //             // vertical gap between two items
  //             mainAxisSpacing: 4, 
  //             // horizontal gap between two items
  //             crossAxisSpacing: 4, 
  //             itemBuilder: (context, index) {
  //               // display each item with a card
  //               return Container(
  //                 padding: EdgeInsets.all(8),
  //                   color: Colors.red,
  //                 child: Text('data' * 50),
  //               );
  //             },
  //           ),
  //   ),
  // )

          // SliverToBoxAdapter(
          //   child: GridView.custom(
          //     shrinkWrap: true,
          //     physics: const NeverScrollableScrollPhysics(),
          //     gridDelegate: SliverQuiltedGridDelegate(
          //       crossAxisCount: 4,
          //       mainAxisSpacing: 4,
          //       crossAxisSpacing: 4,
          //       repeatPattern: QuiltedGridRepeatPattern.inverted,
          //       pattern: const [
          //         QuiltedGridTile(2, 2),
          //         QuiltedGridTile(1, 1),
          //         QuiltedGridTile(1, 1),
          //         QuiltedGridTile(1, 2),
          //       ],
          //     ),
          //     childrenDelegate: SliverChildBuilderDelegate(
          //       (context, index) => Container(
          //         color: Colors.cyanAccent,
          //         child: Text("$index"),
          //       ),
          //       childCount: 44,
          //     ),
          //   ),
          // )
            
          ],
        ),
      ),
    );
  }
}
