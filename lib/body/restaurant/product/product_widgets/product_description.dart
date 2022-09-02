import 'package:flutter/material.dart';

import 'package:onecall/constant/ui.dart';
import 'package:onecall/helperwidgets/vertical_space.dart';

class ProductDescription extends StatelessWidget {
final String discription; 
  const ProductDescription({
    Key? key,
    required this.discription,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
            discription,
            style: bodytext_h2.copyWith(color: black_50, height: 1.2),
          ),
          VerticalSpace(value: MediaQuery.of(context).size.height * 0.10)
        ],
      ),
    );
  }
}
