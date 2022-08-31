import 'package:flutter/material.dart';
import 'package:onecall/constant/ui.dart';
import 'package:onecall/helperwidgets/vertical_space.dart';

class ProductDescription extends StatelessWidget {
  const ProductDescription({Key? key}) : super(key: key);

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
            'dataQuis cillum culpa ut elit in veniam est eu qui dolore consectetur qui minim pariatur. Ipsum anim aute dolor aute aliquip pariatur ullamco magna labore. Culpa Lorem irure culpa commodo ad.',
            style: bodytext_h2.copyWith(color: black_50, height: 1.2),
          ),
          VerticalSpace(value: MediaQuery.of(context).size.height * 0.10)
        ],
      ),
    );
  }
}
