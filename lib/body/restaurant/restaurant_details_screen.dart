import 'package:dynamic_height_grid_view/dynamic_height_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';

import 'package:onecall/assistant/assistant.dart';
import 'package:onecall/body/restaurant/restaurant_widgets/restaurant_app_bar.dart';
import 'package:onecall/body/restaurant/restaurant_widgets/restaurant_grid_card.dart';
import 'package:onecall/body/restaurant/restaurant_widgets/restaurant_tabs.dart';
import 'package:onecall/constant/ui.dart';
import 'package:onecall/helperwidgets/horizontal_space.dart';
import 'package:onecall/helperwidgets/vertical_space.dart';
import 'package:onecall/models/restaurant.dart';
import 'package:onecall/sample/sampledata.dart';
import 'package:onecall/widgets/circle_button.dart';
import 'package:onecall/widgets/notification_icon.dart';
import 'package:onecall/widgets/svertical_space.dart';

class RestaurantDetailsScreen extends StatefulWidget {


  final Restaurant? restaurant; 
  const RestaurantDetailsScreen({
    Key? key,
    this.restaurant,
  }) : super(key: key);

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
            RestaurantAppBar(name: widget.restaurant!.name, image: widget.restaurant!.image, address: widget.restaurant!.address, restaurantId: widget.restaurant!.restaurantId),
            RestaurantTabs(tabController: _tabController,categories: widget.restaurant!.categories ,), 
            RestaurantGridCard(),

            
          ],
        ),
      ),
    );
  }
}
