import 'package:flutter/material.dart';
import 'package:onecall/models/product.dart';

import 'package:onecall/sample/sampledata.dart';

class HanldeSingleSelection extends StatelessWidget {

final List<DynamicOption> collection;
  const HanldeSingleSelection({
    Key? key,
    required this.collection,
  }) : super(key: key);
  
  @override
  Widget build(BuildContext context){
    return Container(
      height: 20,
      margin: EdgeInsets.symmetric(vertical: 4,),
      color: Colors.blue,
    );
  }
}
