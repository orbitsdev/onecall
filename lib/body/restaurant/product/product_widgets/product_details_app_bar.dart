import 'package:flutter/material.dart';
import 'package:onecall/assistant/assistant.dart';
import 'package:onecall/constant/ui.dart';
import 'package:onecall/helperwidgets/horizontal_space.dart';
import 'package:onecall/widgets/circle_button.dart';
import 'package:onecall/widgets/notification_icon.dart';

class ProductDetailsAppBar extends StatelessWidget {
const ProductDetailsAppBar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return SliverAppBar(
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
            );
  }
}