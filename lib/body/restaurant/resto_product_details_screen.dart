import 'package:flutter/material.dart';
import 'package:onecall/assistant/assistant.dart';
import 'package:onecall/constant/ui.dart';
import 'package:onecall/dialogs/pop.dart';
import 'package:onecall/helperwidgets/horizontal_space.dart';
import 'package:onecall/helperwidgets/vertical_space.dart';
import 'package:onecall/sample/sampledata.dart';
import 'package:onecall/widgets/circle_button.dart';
import 'package:onecall/widgets/notification_icon.dart';

class RestoProductDetailsScreen extends StatelessWidget {
  const RestoProductDetailsScreen({Key? key}) : super(key: key);
  static String screenName = "/product_details";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              automaticallyImplyLeading: false,
              backgroundColor: purewhite,
              floating: true,
              title: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleButton(
                      bgcolor: Colors.black.withOpacity(0.5),
                      icon: Icons.arrow_back_ios_rounded,
                      function: () {},
                    ),
                    Row(
                      children: [
                        NotificationIcon(
                          function: () {},
                          icon: Icons.shopping_cart_outlined,
                          bgcolor: Colors.black.withOpacity(0.5),
                        ),
                        HorizontalSpace(value: 8),
                        //  NotificationIcon(function: (){}, icon: Icons.notifications_outlined  , bgcolor: Colors.black.withOpacity(0.5),),
                      ],
                    )
                  ],
                ),
              ),
              expandedHeight: MediaQuery.of(context).size.height * 0.35,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(Assistant().fromImages('f1.jpg'),
                    fit: BoxFit.cover),
                stretchModes: [
                  StretchMode.zoomBackground,
                  StretchMode.blurBackground
                ],
              ),
            ),
            SliverList(
                delegate: SliverChildListDelegate([
              Container(
                color: greybg,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Flexible(
                      child: Container(
                        color: purewhite,
                        padding: EdgeInsets.symmetric(
                          vertical: 16,
                          horizontal: 24,
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              flex: 4,
                              child: Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Spicy Chikcen Joy' * 4,
                                      style: bodytext_h1.copyWith(
                                          color: black_75,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    VerticalSpace(value: 16),

                                    Row(
                                      children: [
                                        Expanded(
                                          child: RichText(
                                            text: TextSpan(
                                                text: '₱ 1500 ',
                                                style: bodytext_h1.copyWith(
                                                  fontWeight: FontWeight.w700,
                                                  color: primary,
                                                ),
                                                children: [
                                                  TextSpan(
                                                      text: '₱ 1000',
                                                      style: bodytext_h3.copyWith(
                                                          decoration:
                                                              TextDecoration
                                                                  .lineThrough,
                                                          color: black_25))
                                                ]),
                                          ),
                                        ),
                                        Text('203 Sold',
                                            style: bodytext_h3.copyWith(
                                              color: black_75,
                                            )),
                                      ],
                                    )
                                    // Container(
                                    //   width: MediaQuery.of(context).size.width,

                                    //   child: Row(
                                    //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    //     crossAxisAlignment:     CrossAxisAlignment.end,

                                    //     mainAxisSize: MainAxisSize.min,
                                    //     children: [
                                    //       Container(
                                    //         child: Row(
                                    //           mainAxisAlignment: MainAxisAlignment.start,
                                    //           crossAxisAlignment: CrossAxisAlignment.end,
                                    //           children: [
                                    //             Text(
                                    //               '₱ 8009',
                                    //               style: bodytext_h1.copyWith(
                                    //                 fontWeight: FontWeight.w700,
                                    //                 color: primary,
                                    //               ),
                                    //             ),
                                    //               HorizontalSpace(value: 4),
                                    //               Text(
                                    //               '₱ 1000' ,
                                    //               style: bodytext_h3.copyWith(
                                    //                   decoration: TextDecoration
                                    //                       .lineThrough,
                                    //                   color: black_25),
                                    //             ),
                                    //           ],
                                    //         ),
                                    //       ),
                                    //         Text(
                                    //         '203 Sold',
                                    //         style: bodytext_h3.copyWith(
                                    //           color: black_75
                                    //         ),
                                    //       ),
                                    //     ],
                                    //   ),
                                    // ),
                                  ],
                                ),
                              ),
                            ),

                            // Container(
                            //   height: 34,
                            //   width: 34,
                            //   child: Icon(Icons.favorite, color: black_25, size: 26,),
                            // )
                          ],
                        ),
                      ),
                    ),

                    GestureDetector(
                      onTap: (){
                        Pop.showProductVariation(context);
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        color: purewhite,
                        padding:
                            EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                        margin: EdgeInsets.symmetric(
                          vertical: 6,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                                text: TextSpan(
                                    text: 'Select Variation',
                                    style: bodytext_h2.copyWith(color: black_75,),
                                    children: [
                                  // TextSpan(
                                  //   text: '(9 flavor)',
                                  //   style: bodytext_h2.copyWith(color: black_50),
                                  // )
                                ])),
                            VerticalSpace(value: 12),
                            Container(

                              decoration: BoxDecoration(
                                                        

                                borderRadius: BorderRadius.circular(4),
                              ),
                              height: 60,
                              child: ListView.builder(
                                shrinkWrap: true,
                                  // physics: NeverScrollableScrollPhysics(),
                                  scrollDirection: Axis.horizontal,
                                  itemCount: sampleproduct.length,
                                  itemBuilder: (context, index) =>Container(
                                    padding: EdgeInsets.all(6),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(4),
                                    color: greybg,
                                    ),
                                      margin: EdgeInsets.only(right: 18),
                                  
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                       Container(
                                        height: 100,
                                        width: 60,
                                        child: Image.asset(Assistant().fromImages('f3.jpg',), fit:  BoxFit.fill,),
                                        decoration: BoxDecoration(
                                          
                                          borderRadius: BorderRadius.circular(4),),
                                       ),
                                       HorizontalSpace(value: 8),
                                        Text('Product name ', style: bodytext_h3.copyWith(color: black_75),)
                                      ],
                                    ),
                                  )),)
                          ],
                        ),
                      ),
                    ),
                    // lineBuilder(),
                    // Container(
                    //   margin: EdgeInsets.symmetric(
                    //     horizontal: 24,
                    //   ),
                    //   padding: EdgeInsets.symmetric(
                    //     vertical: 16,
                    //   ),
                    //   child: Row(
                    //     mainAxisAlignment: MainAxisAlignment.center,
                    //     children: [
                    //       CircleButton(
                    //         icon: Icons.remove,
                    //         function: () {},
                    //         iconcolor: purewhite,
                    //         bgcolor: primary,
                    //       ),
                    //       HorizontalSpace(value: 24),
                    //       Text(
                    //         '4',
                    //         style: bodytext_h1.copyWith(
                    //             color: black_75, fontWeight: FontWeight.w600),
                    //         textAlign: TextAlign.center,
                    //       ),
                    //       HorizontalSpace(value: 24),
                    //       CircleButton(
                    //         icon: Icons.add,
                    //         function: () {},
                    //         iconcolor: purewhite,
                    //         bgcolor: primary,
                    //       ),
                    //     ],
                    //   ),
                    // ),
                    // lineBuilder(),
                    Container(
                      color: purewhite,
                      padding: EdgeInsets.symmetric(
                        vertical: 12,
                        horizontal: 24,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Description',
                            style: bodytext_h1.copyWith(
                                color: black_75, fontWeight: FontWeight.w700),
                          ),
                          VerticalSpace(value: 16),
                          Text(
                            'dataQuis cillum culpa ut elit in veniam est eu qui dolore consectetur qui minim pariatur. Ipsum anim aute dolor aute aliquip pariatur ullamco magna labore. Culpa Lorem irure culpa commodo ad.',
                            style: bodytext_h2.copyWith(
                                color: black_50, height: 1.2),
                          ),
                          VerticalSpace(
                              value: MediaQuery.of(context).size.height * 0.10)
                        ],
                      ),
                    )
                  ],
                ),
              )
            ]))
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Container(
          height: 60,
          color: purewhite,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                constraints: BoxConstraints(
                    minWidth: MediaQuery.of(context).size.width * 0.4,
                    maxWidth: MediaQuery.of(context).size.width * 0.5),
                color: green,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.shopping_basket_outlined,
                      color: purewhite,
                    ),
                    Text(
                      'Add to Cart',
                      style: bodytext_h3.copyWith(
                        color: purewhite,
                      ),
                    ),
                    VerticalSpace(value: 3),
                    // Flexible(
                    //   child: Text(
                    //     '4 items',
                    //     style: bodytext_h3.copyWith(color: black_50),
                    //   ),
                    // )
                  ],
                ),
              ),
              Expanded(
                flex: 4,
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  color: primary,
                  child: Center(
                    child: Text(
                      'Order Now',
                      style: bodytext_h2.copyWith(
                          color: purewhite, fontWeight: FontWeight.w700),
                    ),
                  ),

                  //  Row(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  //   crossAxisAlignment: CrossAxisAlignment.center,
                  //   children: [
                  //     Text(
                  //       'Add to cart'.toUpperCase(),
                  //       style: bodytext_h2.copyWith(
                  //           color: purewhite, fontWeight: FontWeight.w700),
                  //     ),
                  //     HorizontalSpace(value: 8),
                  //     Icon(
                  //       Icons.shopping_cart,
                  //       color: purewhite,
                  //       size: 26,
                  //     )
                  //   ],
                  // ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Divider lineBuilder() {
    return Divider(
      thickness: 1.5,
      color: black_4,
    );
  }
}
