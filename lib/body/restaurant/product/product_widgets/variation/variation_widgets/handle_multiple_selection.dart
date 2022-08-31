import 'package:flutter/material.dart';
import 'package:onecall/body/restaurant/product/product_widgets/variation/variation_widgets/option_card.dart';

import 'package:onecall/constant/ui.dart';
import 'package:onecall/helperwidgets/vertical_space.dart';
import 'package:onecall/sample/sampledata.dart';

class ProductVariationContent extends StatelessWidget {
  final List<DynamicExtra> dynamicextracollection;
  const ProductVariationContent({
    Key? key,
    required this.dynamicextracollection,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: dynamicextracollection
          .map(
            (extra) => Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    extra.title,
                    style: bodytext_h2.copyWith(color: black_75),
                  ),
                  const VerticalSpace(value: 6),
                  Wrap(
                    alignment: WrapAlignment.start,
                    crossAxisAlignment: WrapCrossAlignment.start,
                    children: extra.optionscollection
                        .map((e) => GestureDetector
                        (
                          onTap: (){
                            print(e.title);
                          },
                          child: OptionCard(option: e)))
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
