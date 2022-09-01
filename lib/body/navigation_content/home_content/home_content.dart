import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onecall/body/restaurant/restaurant_details_screen.dart';
import 'package:onecall/body/restaurant/resto_card.dart';
import 'package:onecall/constant/ui.dart';
import 'package:onecall/models/restaurant.dart';
import 'package:onecall/widgets/circle_button.dart';
import 'package:onecall/widgets/svertical_space.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Container(
            padding: EdgeInsets.symmetric(
              vertical: 12,
              horizontal: screenPadding,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Hi Brian 👋',
                      style: bodytext_h1.copyWith(
                          color: black_75, fontWeight: FontWeight.w700),
                    ),
                    Text(
                      'Are you hungry?',
                      style: bodytext_h3.copyWith(color: black_75),
                    ),
                  ],
                ),
                Row(
                  children: [
                  
                    CircleButton(
                        iconcolor: primary,
                        icon: Icons.notifications_outlined,
                        function: () {}),
                    CircleButton(
                        iconcolor: primary,
                        icon: Icons.shopping_cart_outlined,
                        function: () {}),
                  ],
                ),
              ],
            ),
          ),
        ),

        SverticalSpace(height: 4),
        SliverToBoxAdapter(
          child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: screenPadding,
              ),
              child: Container(
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Near Merchants ',
                          style: bodytext_h1.copyWith(
                              color: black_75, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'See all ',
                          style: bodytext_h2.copyWith(color: primary),
                        ),
                      ],
                    ),
                  ],
                ),
              )),
        ),

        SliverList(
          delegate: SliverChildBuilderDelegate(
            childCount: samplerestaurant.length,
            (context, index) =>
              GestureDetector(
                onTap: (){
                  Get.to(()=> RestaurantDetailsScreen(restaurant: samplerestaurant[index],));
                },
                child: RestoCard(
                  image:samplerestaurant[index].image,
                  cicleimage:samplerestaurant[index].circleimage, 
                  restaurantname:samplerestaurant[index].name, 
                  kilometerdistance:samplerestaurant[index].kilometerDistance,
                  address:samplerestaurant[index].address, 
                  timeopen:samplerestaurant[index].openAt, 
                  timeclose:samplerestaurant[index].closeAt,
                   openfrom:samplerestaurant[index].from, 
                   openuntil:samplerestaurant[index].until
                   ),
              ),
            
            
          ),
        ),

      
      ],
    );
  }
}
