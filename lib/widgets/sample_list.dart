import 'package:flutter/material.dart';

class SampleList extends StatelessWidget {
  final Widget child;
  final int itemcount;
  final Axis axis;
  const SampleList({
    Key? key,
    required this.child,
    required this.itemcount,
    required this.axis,
  }) : super(key: key);
  @override
  Widget build(BuildContext context){
    return ListView.builder(
      itemCount: itemcount,
      scrollDirection:axis,
      itemBuilder: (context,index)=> child);
  }
}
