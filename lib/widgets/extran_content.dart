import 'package:flutter/material.dart';
import 'package:onecall/body/restaurant/extra_card.dart';

import 'package:onecall/sample/sampledata.dart';

class ExtranContent extends StatelessWidget {

  final List<Extra> extra;
  const ExtranContent({
    Key? key,
    required this.extra,
  }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: extra.map((e) => ExtraCard(extra: e) ).toList(),
    );
  }
}
