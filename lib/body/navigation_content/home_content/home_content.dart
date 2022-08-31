import 'package:dynamic_height_grid_view/dynamic_height_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:onecall/assistant/assistant.dart';
import 'package:onecall/body/navigation_content/home_content/delivery_address.dart';
import 'package:onecall/body/navigation_content/home_content/merchant_card.dart';
import 'package:onecall/body/restaurant/restaurant_details_screen.dart';
import 'package:onecall/body/restaurant/resto_card.dart';
import 'package:onecall/constant/ui.dart';
import 'package:onecall/helperwidgets/horizontal_space.dart';
import 'package:onecall/helperwidgets/vertical_space.dart';
import 'package:onecall/models/products.dart';
import 'package:onecall/sample/sampledata.dart';
import 'package:onecall/widgets/circle_button.dart';
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

        // SliverToBoxAdapter(
        //   child: Container(
        //     padding: EdgeInsets.symmetric(
        //       horizontal: screenPadding,
        //     ),
        //     child: Column(
        //       mainAxisSize: MainAxisSize.max,
        //       mainAxisAlignment: MainAxisAlignment.center,
        //       crossAxisAlignment: CrossAxisAlignment.start,
        //       children: [
        //         VerticalSpace(value: 8),
        //         DeliveryAddress(),
        //         VerticalSpace(value: 16),
               
        //         Container(
        //           child: Column(
        //             children: [
        //               Row(
        //                 crossAxisAlignment: CrossAxisAlignment.center,
        //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //                 children: [
        //                   Text(
        //                     'Category ',
        //                     style: bodytext_h1.copyWith(
        //                         color: black_75, fontWeight: FontWeight.bold),
        //                   ),
        //                   Text(
        //                     'See all ',
        //                     style: bodytext_h2.copyWith(color: primary),
        //                   ),
        //                 ],
        //               ),
        //             ],
        //           ),
        //         )
        //       ],
        //     ),
        //   ),
        // ),
        // SliverToBoxAdapter(
        //   child: Container(
        //     //        color: primary.withOpacity(0.1),
        //     padding: EdgeInsets.symmetric(
        //       vertical: 12,
        //       horizontal: 24,
        //     ),
        //     height: 140,
        //     child: Scrollbar(
        //       radius: Radius.circular(12),
        //       child: AnimationLimiter(
        //         child: ListView.builder(
        //           shrinkWrap: true,
        //           scrollDirection: Axis.horizontal,
        //           itemCount: joilebeeproductsample.length,
        //           itemBuilder: (context, index) =>
        //               AnimationConfiguration.staggeredList(
        //             position: index,
        //             duration: Duration(milliseconds: 700),
        //             child: ScaleAnimation(
        //               child: Container(
        //                 padding: EdgeInsets.only(top: 8, left: 8, right: 0),
        //                 decoration: BoxDecoration(
        //                     borderRadius: BorderRadius.circular(4),
        //                     color: purewhite,
        //                     boxShadow: [
        //                       // BoxShadow(
        //                       //   color: Colors.black.withOpacity(0.2),
        //                       //   spreadRadius: 1,
        //                       //   blurRadius: 6,
        //                       //   offset: const Offset(0, 2),
        //                       // ),
        //                     ]),
        //                 child: Stack(
        //                   children: [
        //                     Positioned(
        //                       bottom: 0,
        //                       right: 0,
        //                       child: Container(
        //                         decoration: BoxDecoration(
        //                           image: DecorationImage(
        //                               image: AssetImage(
        //                                 Assistant().fromImages(
        //                                     joilebeeproductsample[index].image),
        //                               ),
        //                               fit: BoxFit.fill),
        //                           borderRadius: BorderRadius.circular(4),
        //                           //color: primary,
        //                         ),
        //                         height: 80,
        //                         width: 110,
        //                       ),
        //                     ),
        //                     Text(
        //                       joilebeeproductsample[index].name,
        //                       style: bodytext_h2.copyWith(
        //                           color: black_75, fontWeight: FontWeight.w600),
        //                     ),
        //                   ],
        //                 ),
        //                 width: MediaQuery.of(context).size.width / 2,
        //                 margin: EdgeInsets.only(
        //                     right: 12, bottom: 8, top: 6, left: 8),
        //               ),
        //             ),
        //           ),
        //         ),
        //       ),
        //     ),
        //   ),
        // ),
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
            
            //  Container(
            //   child: Column(
            //     mainAxisAlignment: MainAxisAlignment.start,
            //     mainAxisSize: MainAxisSize.min,
            //     children: [
            //       Container(
            //         height: 140,
            //         width: MediaQuery.of(context).size.width,
            //         child: ClipRRect(
            //           borderRadius: BorderRadius.only(topLeft: Radius.circular(12), topRight: Radius.circular(12)),
            //           child: Image.asset(Assistant().fromImages('f1.jpg'), fit: BoxFit.cover,)),
            //         decoration: BoxDecoration(

            //             color: Colors.pink,
            //             borderRadius: BorderRadius.only(
            //                 topLeft: Radius.circular(12),
            //                 topRight: Radius.circular(12))),
            //       ),
            //       Container(
            //         padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
            //         decoration: BoxDecoration(
            //         color: purewhite,
            //           borderRadius: BorderRadius.only(bottomLeft: Radius.circular(12), bottomRight: Radius.circular(12)),
            //         ),
            //         child: Column(
            //           children: [
            //             Row(
            //               crossAxisAlignment: CrossAxisAlignment.center,

            //               children: [
            //                 Expanded(
            //                   child: Row(
            //                     crossAxisAlignment: CrossAxisAlignment.start,
            //                     children: [
            //                       ClipOval(
            //                         child: Container(
                                      
            //                           height: 34,
            //                           width: 34,
            //                           color: primary,
            //                           child: Image.asset(Assistant().fromImages('playstore.png'), fit: BoxFit.cover,),
            //                         ),
            //                       ),
            //                       HorizontalSpace(value: 8),
            //                       Expanded(
            //                         child: Text(
            //                           'Restaurant Name asdasdasdasd asdasd',  style: bodytext_h2.copyWith(
            //                               fontWeight: FontWeight.w700,
            //                               color: black_75,
            //                               height: 1,
            //                               ),
            //                         ),
            //                       ),
            //                     ],
            //                   ),
            //                 ),
                            
            //                 Container(
            //                   padding: EdgeInsets.symmetric(horizontal: 8,),
            //                   child: Row(
            //                     mainAxisAlignment: MainAxisAlignment.center,
            //                     crossAxisAlignment: CrossAxisAlignment.center,
            //                     children: [
            //                       Icon(
            //                         Icons.directions_walk,
            //                         size: 14,
            //                         color: Colors.green,
            //                       ),
            //                       HorizontalSpace(value: 4),
            //                       Text(
            //                         '0.5 km',
            //                         style: bodytext_h4.copyWith(color: black_50),
            //                       )
            //                     ],
            //                   ),
            //                 )
            //               ],
            //             ),
                      
            //             Container(
            //          // color: Colors.purple,
            //           padding: EdgeInsets.symmetric(
            //             vertical: 8.0,
            //           ),
            //           child: Column(
            //             mainAxisAlignment: MainAxisAlignment.start,
            //             children: [
            //               Row(
            //                 children: [
            //                   Container(
                             
            //                     height: 30,
            //                     width: 30,
            //                     child: Center(child: Icon(Icons.location_on, color: black_25,))),
            //                   HorizontalSpace(value: 8),
            //                   Expanded(
            //                     child: Text(
            //                       'Restaurant Name asdasdasdasd asdasd' *2,
            //                       style: bodytext_h3.copyWith(color: black_25),
            //                     ),
            //                   ),
            //                 ],
            //               ),
                          
            //               Row(
            //                 children: [
            //                   Container(
                             
            //                     height: 30,
            //                     width: 30,
            //                     child: Center(child: Icon(Icons.access_time, color: black_25, size:  20,))),
            //                   HorizontalSpace(value: 8),
            //                   RichText(text: TextSpan(text:'Open ( ', style: bodytext_h5.copyWith(color: primary, fontWeight: FontWeight.w700), children: [
            //                     TextSpan(text: '8:30 AM') ,
            //                     TextSpan(text: ' - ') ,
            //                     TextSpan(text: '7:00 PM ) ') ,
            //                     TextSpan(text: 'M') ,
            //                     TextSpan(text: ' - ') ,
            //                     TextSpan(text: 'F') ,
            //                   ]),  )
            //                 ],
            //               ),
                         
                         
            //             ],
            //           ),
            //         ),
            //           ],
            //         ),
            //       ),
                  
            //     ],
            //   ),
            //   decoration: BoxDecoration(
            //      // color: Colors.blue, 
            //       borderRadius: BorderRadius.circular(12)),
            //   margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            // ),
          ),
        ),

        // SliverToBoxAdapter(
        //   child: Container(
        //     height: 300,
        //     padding: EdgeInsets.symmetric(
        //       vertical: 12,
        //       horizontal: 24,
        //     ),
        //     child: Scrollbar(
        //       radius: Radius.circular(12),
        //       child: AnimationLimiter(
        //         child: ListView.builder(
        //             shrinkWrap: true,
        //             scrollDirection: Axis.horizontal,
        //             itemCount: 10,
        //             itemBuilder: (context, index) =>
        //                 AnimationConfiguration.staggeredList(
        //                   duration: Duration(milliseconds: 375),
        //                   position: index,
        //                   child: ScaleAnimation(
        //                     child: GestureDetector(
        //                       onTap: () {
        //                         Get.to(() => RestaurantDetailsScreen());
        //                       },
        //                       child: Container(
        //                         width: MediaQuery.of(context).size.width / 1.8,
        //                         decoration: BoxDecoration(
        //                             borderRadius: BorderRadius.circular(16),
        //                             color: purewhite),
        //                         child: Column(
        //                           crossAxisAlignment: CrossAxisAlignment.start,
        //                           children: [
        //                             Container(
        //                               height: 156,
        //                               child: Stack(
        //                                 fit: StackFit.expand,
        //                                 children: [
        //                                   Hero(
        //                                     tag: sampleproduct[index].imagepaht,
        //                                     child: Image.asset(
        //                                       Assistant().fromImages('f1.jpg'),
        //                                       fit: BoxFit.cover,
        //                                     ),
        //                                   ),
        //                                   Positioned(
        //                                     top: 8,
        //                                     left: 8,
        //                                     child: Container(
        //                                       padding: EdgeInsets.symmetric(
        //                                           horizontal: 8.0, vertical: 4),
        //                                       decoration: BoxDecoration(
        //                                           color: Colors.black
        //                                               .withOpacity(0.5),
        //                                           borderRadius:
        //                                               BorderRadius.circular(
        //                                                   12)),
        //                                       child: Row(
        //                                         mainAxisSize: MainAxisSize.min,
        //                                         mainAxisAlignment:
        //                                             MainAxisAlignment.center,
        //                                         children: [
        //                                           Icon(Icons.directions_walk,
        //                                               color: a_yellow,
        //                                               size: 16),
        //                                           HorizontalSpace(value: 4),
        //                                           Text(
        //                                             '2.5 km',
        //                                             style: bodytext_h3.copyWith(
        //                                                 color: purewhite),
        //                                           )
        //                                         ],
        //                                       ),
        //                                     ),
        //                                   )
        //                                 ],
        //                               ),
        //                             ),
        //                             Expanded(
        //                               child: Container(
        //                                 padding: EdgeInsets.all(8),
        //                                 decoration: BoxDecoration(
        //                                   borderRadius: BorderRadius.only(
        //                                       bottomLeft: Radius.circular(16),
        //                                       bottomRight: Radius.circular(16)),
        //                                   color: purewhite,
        //                                 ),
        //                                 child: Column(
        //                                   crossAxisAlignment:
        //                                       CrossAxisAlignment.start,
        //                                   children: [
        //                                     Text(
        //                                       'Restaurant name sample',
        //                                       style: bodytext_h2.copyWith(
        //                                           color: black_75,
        //                                           fontWeight: FontWeight.w700,
        //                                           height: 1),
        //                                     ),
        //                                     VerticalSpace(value: 4),
        //                                     Text(
        //                                       'Restaurant short description example example' *
        //                                           2,
        //                                       style: bodytext_h4.copyWith(
        //                                           color: black_75, height: 1),
        //                                     )
        //                                   ],
        //                                 ),
        //                               ),
        //                             ),
        //                           ],
        //                         ),
        //                         margin: EdgeInsets.only(right: 12, bottom: 8),
        //                       ),
        //                     ),
        //                   ),
        //                 )),
        //       ),
        //     ),
        //   ),
        // ),
      ],
    );
  }
}
