import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:onecall/assistant/assistant.dart';
import 'package:onecall/body/navigation_content/home_content/delivery_address.dart';
import 'package:onecall/body/restaurant/restaurant_details_screen.dart';
import 'package:onecall/constant/ui.dart';
import 'package:onecall/helperwidgets/horizontal_space.dart';
import 'package:onecall/helperwidgets/vertical_space.dart';
import 'package:onecall/sample/sampledata.dart';
import 'package:onecall/widgets/sample_list.dart';
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
                    // Container(
                    //   height: 30,
                    //   width: 30,
                    //   decoration: BoxDecoration(
                    //       borderRadius: BorderRadius.circular(30 * 2),
                    //       color: Colors.red),
                    //   child: ClipOval(
                    //       child: Image.asset(
                    //     Assistant().fromImages(
                    //       'Rectangle 4.png',
                    //     ),
                    //     fit: BoxFit.cover,
                    //   )),
                    // ),

                    Icon(
                      Icons.notifications_outlined,
                      color: black_75,
                    ),
                    HorizontalSpace(value: 8),
                    Icon(
                      Icons.shopping_cart_outlined,
                      color: black_75,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
       
        SliverToBoxAdapter(
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: screenPadding,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                VerticalSpace(value: 8),
                DeliveryAddress(),
                VerticalSpace(value: 16),
                GestureDetector(
                  onTap: ()=>{
                    Get.to(()=> RestaurantDetailsScreen()),
                  },
                  child: Hero(tag: 'f1', child: Image.asset(Assistant().fromImages('f1.jpg'),width: 40, height: 40,),),
                ),
                Container(
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Category ',
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
                )
              ],
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
            //        color: primary.withOpacity(0.1),
            padding: EdgeInsets.symmetric(
              vertical: 12,
              horizontal: 24,
            ),
            height: 140,
            child: Scrollbar(
              radius: Radius.circular(12),
              child: AnimationLimiter(
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: sampleproduct.length,
                  itemBuilder: (context, index) =>
                      AnimationConfiguration.staggeredList(
                    position: index,
                    duration: Duration(milliseconds: 700),
                    child: ScaleAnimation(
                      child: Container(
                        padding: EdgeInsets.only(top: 8, left: 8, right: 0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: purewhite,
                            boxShadow: [
                              // BoxShadow(
                              //   color: Colors.black.withOpacity(0.2),
                              //   spreadRadius: 1,
                              //   blurRadius: 6,
                              //   offset: const Offset(0, 2),
                              // ),
                            ]),
                        child: Stack(
                          children: [
                            Positioned(
                              bottom: 0,
                              right: 0,
                              child: Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                        Assistant().fromImages(
                                            sampleproduct[index].imagepaht),
                                      ),
                                      fit: BoxFit.fill),
                                  borderRadius: BorderRadius.circular(4),
                                  //color: primary,
                                ),
                                height: 80,
                                width: 110,
                              ),
                            ),
                            Text(
                              sampleproduct[index].name,
                              style: bodytext_h2.copyWith(
                                  color: black_75, fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        width: MediaQuery.of(context).size.width / 2,
                        margin: EdgeInsets.only(
                            right: 12, bottom: 8, top: 6, left: 8),
                      ),
                    ),
                  ),
                ),
              ),
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
                          'Near Food ',
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
        
        SliverToBoxAdapter(
          child: Container(
            height: 300,
            padding: EdgeInsets.symmetric(
              vertical: 12,
              horizontal: 24,
            ),
            child: Scrollbar(
              radius: Radius.circular(12),
              child: AnimationLimiter(
                child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) =>
                        AnimationConfiguration.staggeredList(
                          duration: Duration(milliseconds: 375),
                          position: index,
                          child: ScaleAnimation(
                            child: GestureDetector(
                              onTap: () {
                                Get.to(() => RestaurantDetailsScreen());
                              },
                              child: Container(
                                width: MediaQuery.of(context).size.width / 1.8,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    color: purewhite),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 156,
                                      child: Stack(
                                        fit: StackFit.expand,
                                        children: [
                                          Hero(
                                            tag: sampleproduct[index].imagepaht,
                                            child: Image.asset(
                                              Assistant().fromImages('f1.jpg'),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          Positioned(
                                            top: 8,
                                            left: 8,
                                            child: Container(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 8.0, vertical: 4),
                                              decoration: BoxDecoration(
                                                  color: Colors.black
                                                      .withOpacity(0.5),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12)),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Icon(Icons.directions_walk,
                                                      color: a_yellow,
                                                      size: 16),
                                                  HorizontalSpace(value: 4),
                                                  Text(
                                                    '2.5 km',
                                                    style: bodytext_h3.copyWith(
                                                        color: purewhite),
                                                  )
                                                ],
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        padding: EdgeInsets.all(8),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(16),
                                              bottomRight: Radius.circular(16)),
                                          color: purewhite,
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Restaurant name sample',
                                              style: bodytext_h2.copyWith(
                                                  color: black_75,
                                                  fontWeight: FontWeight.w700,
                                                  height: 1),
                                            ),
                                            VerticalSpace(value: 4),
                                            Text(
                                              'Restaurant short description example example' *
                                                  2,
                                              style: bodytext_h4.copyWith(
                                                  color: black_75, height: 1),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                margin: EdgeInsets.only(right: 12, bottom: 8),
                              ),
                            ),
                          ),
                        )),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
