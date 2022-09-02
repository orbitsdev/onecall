import 'package:dynamic_height_grid_view/dynamic_height_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';

import 'package:onecall/assistant/assistant.dart';
import 'package:onecall/body/restaurant/moredetails_page.dart';
import 'package:onecall/body/restaurant/restaurant_widgets/restaurant_app_bar.dart';
import 'package:onecall/body/restaurant/restaurant_widgets/restaurant_grid_card.dart';
import 'package:onecall/body/restaurant/restaurant_widgets/restaurant_tabs.dart';
import 'package:onecall/constant/ui.dart';
import 'package:onecall/controllers/restaurant_controller.dart';
import 'package:onecall/helperwidgets/horizontal_space.dart';
import 'package:onecall/helperwidgets/vertical_space.dart';
import 'package:onecall/models/restaurant.dart';
import 'package:onecall/sample/sampledata.dart';
import 'package:onecall/widgets/circle_button.dart';
import 'package:onecall/widgets/notification_icon.dart';
import 'package:onecall/widgets/svertical_space.dart';
import 'package:sliver_tools/sliver_tools.dart';

class RestaurantDetailsScreen extends StatefulWidget {


  final Restaurant? restaurant; 
  const RestaurantDetailsScreen({
    Key? key,
    this.restaurant,
  }) : super(key: key);

  static String screenName = "/restaurantdetails";

  @override
  State<RestaurantDetailsScreen> createState() =>     _RestaurantDetailsScreenState();
}

class _RestaurantDetailsScreenState extends State<RestaurantDetailsScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  final scrollController =  ScrollController();

  @override
  void initState() {
    _tabController = TabController(length: widget.restaurant!.categories.length, vsync: this);
    super.initState();
  }

int cateGoryIndex = 0;
void changeCategory(int index) {
  
  cateGoryIndex = index;
  setState(() {
    
  });
  
  print( widget.restaurant!.categories[cateGoryIndex].products);
}
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:
        NestedScrollView(headerSliverBuilder: (context, innerBoxIsScrolled )=> [
          RestaurantAppBar(name: widget.restaurant!.name, image: widget.restaurant!.image, address: widget.restaurant!.address, restaurantId: widget.restaurant!.restaurantId, tabcontroller: _tabController, tabarfunction: changeCategory, categoriesandproducts: widget.restaurant!.categories ,),
        ], body: TabBarView(
                  controller: _tabController,
                  children:  widget.restaurant!.categories.asMap().entries.map((e) => RestaurantGridCard(scrollController: scrollController, productcollection: e.value.products) ).toList(),

                ),),


      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: (){

          
              Get.to(()=>  MoredetailsPage(
                address: widget.restaurant!.address,
                name: widget.restaurant!.name ,
                image: widget.restaurant!.image,
                kilometerDistance: widget.restaurant!.kilometerDistance ,
                longDescription: widget.restaurant!.longDescription ,
                openAt: widget.restaurant!.openAt ,
                closeAt: widget.restaurant!.closeAt ,
                from: widget.restaurant!.from,
                until: widget.restaurant!.until,
              ));
          },
          focusColor: black_05,
          child: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
            color: primary,
            border: Border.all(
              width: 1,
              color: purewhite
            ),
            borderRadius: BorderRadius.circular(40 * 2),
            boxShadow: [
              BoxShadow(
                blurRadius: 4,
                spreadRadius: 1,
                offset: Offset(0, 4),
                color: Colors.black.withOpacity(0.2)
              )
            ]
            ),
            child: Center(child: Icon(Icons.question_mark_outlined, color: purewhite,),),
          ),
        ),
      )
      ),
    );
  }
}
