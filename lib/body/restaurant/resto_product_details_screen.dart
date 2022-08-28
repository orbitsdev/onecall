import 'package:flutter/material.dart';
import 'package:onecall/assistant/assistant.dart';
import 'package:onecall/constant/ui.dart';
import 'package:onecall/helperwidgets/horizontal_space.dart';
import 'package:onecall/helperwidgets/vertical_space.dart';
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
                padding: EdgeInsets.symmetric(
                  vertical: 12,
                  horizontal: 24,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [

                    VerticalSpace(value: 24),
                    Container(

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleButton(icon: Icons.add, function:  (){}, iconcolor: purewhite, bgcolor: primary,),
                          HorizontalSpace(value: 16),
                          Text('4', style: bodytext_h1.copyWith(color: black_75, fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
                          HorizontalSpace(value: 16),
                          CircleButton(icon: Icons.add, function:  (){}, iconcolor: purewhite, bgcolor: primary,),
                        ],
                      ),
                      ),
                    VerticalSpace(value: 24),
                    Flexible(
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            flex: 4,
                              child: Text(
                            ' SPicy Chikcen Joy' ,
                            style: bodytext_h1.copyWith(
                                color: black_75, fontWeight: FontWeight.w700),
                          )),
                            HorizontalSpace(value: 12),
                          Expanded(
                            flex: 2,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                
                                Text(
                                  '₱ 1000.00',
                                  style: bodytext_h1.copyWith(fontWeight: FontWeight.w700, color: black_75,),
                                ),
                                Text(
                                  '₱ 1000.00',
                                  style: bodytext_h3.copyWith(decoration:  TextDecoration.lineThrough, color: black_25),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),

                    VerticalSpace(value: 16),
                    Text('dataQuis cillum culpa ut elit in veniam est eu qui dolore consectetur qui minim pariatur. Ipsum anim aute dolor aute aliquip pariatur ullamco magna labore. Culpa Lorem irure culpa commodo ad.', style:bodytext_h2.copyWith(color: black_50, height: 1.2))
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
                padding: EdgeInsets.symmetric(
                  horizontal: 24,
                ),
                color: primary,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.shopping_cart_checkout_outlined,
                      color: purewhite,
                    ),
                    VerticalSpace(value: 3),
                    Text(
                      'Add to cart',
                      style: bodytext_h4.copyWith(color: purewhite),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Container(
                    height: MediaQuery.of(context).size.height,
                    padding: EdgeInsets.symmetric(
                      horizontal: 24,
                    ),
                    color: black_75,
                    child: Center(
                        child: Text(
                      'Buy now',
                      style: bodytext_h2.copyWith(color: purewhite),
                    ))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
