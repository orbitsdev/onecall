import 'package:flutter/material.dart';
import 'package:onecall/helperwidgets/vertical_space.dart';

class SverticalSpace extends StatelessWidget {
final double height;
  const SverticalSpace({
    Key? key,
    required this.height,
  }) : super(key: key);
  @override
  Widget build(BuildContext context){
    return SliverToBoxAdapter(
      child: VerticalSpace(value: height),
    );
  }
}
