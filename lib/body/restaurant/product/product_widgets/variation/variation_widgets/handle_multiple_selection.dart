import 'package:flutter/material.dart';
import 'package:onecall/body/restaurant/product/product_widgets/variation/variation_widgets/option_card.dart';

import 'package:onecall/constant/ui.dart';
import 'package:onecall/helperwidgets/vertical_space.dart';
import 'package:onecall/models/product.dart';

class ProductVariationContent extends StatelessWidget {
  final List<Variation> varations;
  const ProductVariationContent({
    Key? key,
    required this.varations,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: varations
          .map(
            (variation) => Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    variation.name,
                    style: bodytext_h2.copyWith(color: black_75),
                  ),
                  const VerticalSpace(value: 6),
                  Wrap(
                    alignment: WrapAlignment.start,
                    crossAxisAlignment: WrapCrossAlignment.start,
                    children: variation.dynamicOption
                        .map((e) => GestureDetector
                        (
                          onTap: (){
                            print(e.name);
                          },
                          child: OptionCard(option:e)))
                        .toList(),
                  ),
                ],
              ),
            ),
          )
          .toList(),
    );
  }
}
