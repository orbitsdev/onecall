import 'package:flutter/material.dart';

import 'package:onecall/assistant/assistant.dart';
import 'package:onecall/body/restaurant/product/product_widgets/product_addtocart_and_ordenow_button.dart';
import 'package:onecall/body/restaurant/product/product_widgets/product_description.dart';
import 'package:onecall/constant/ui.dart';
import 'package:onecall/dialogs/pop.dart';
import 'package:onecall/helperwidgets/horizontal_space.dart';
import 'package:onecall/helperwidgets/vertical_space.dart';
import 'package:onecall/models/products.dart';
import 'package:onecall/sample/sampledata.dart';
import 'package:onecall/widgets/circle_button.dart';
import 'package:onecall/widgets/notification_icon.dart';

import 'product_widgets/product_details_app_bar.dart';
import 'product_widgets/product_name_price_sold.dart';
import 'product_widgets/product_variation.dart';

class RestoProductDetailsScreen extends StatelessWidget {
  static String screenName = "/product_details";

  final Products? product;
  const RestoProductDetailsScreen({
    Key? key,
    this.product,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            ProductDetailsAppBar(),
            SliverList(
                delegate: SliverChildListDelegate(
                  [
              Container(
                color: greybg,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ProductNamePriceSold(name: product!.name, price: product!.price.toString() , discountprice: product!.discount.toString(), sold: 205.toString()),
                    if(product!.variation!.length > 0 ) ProductVariation(),
                    ProductDescription(),
                  ],
                ),
              )
            ]))
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: ProductAddtocartAndOrdenowButton(),
      ),
    );
  }

}
