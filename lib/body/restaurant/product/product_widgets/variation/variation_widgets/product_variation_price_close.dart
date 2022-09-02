import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:onecall/assistant/assistant.dart';
import 'package:onecall/constant/controllers.dart';
import 'package:onecall/constant/ui.dart';
import 'package:onecall/helperwidgets/horizontal_space.dart';
import 'package:onecall/helperwidgets/vertical_space.dart';
import 'package:onecall/widgets/circle_button.dart';

class ProductVariationPriceClose extends StatelessWidget {
final String name;
final String price;
final String image;
  const ProductVariationPriceClose({
    Key? key,
    required this.name,
    required this.price,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return  Container(
      padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 24,),
      constraints: BoxConstraints(
        minHeight: 100,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              height: 100,
              width: Get.width,
              color: Colors.amber,
              child: Image.asset(Assistant().fromImages(image),fit: BoxFit.cover,),
            ),
          ),

          Expanded(
            child: Container(
              padding: EdgeInsets.only(left: 8),
              width: Get.width,
              constraints: BoxConstraints(
                minHeight: 100,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(name , style: bodytext_h2,),
                  VerticalSpace(value: 4),
                  Text('₱ ${price}', style: bodytext_h2.copyWith(color: primary),),
                ],
              ),
            ),
          ),
        ],
      ),

    );

  }
}
