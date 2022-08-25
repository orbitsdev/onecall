import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:onecall/assistant/assistant.dart';

class Testsliver extends StatelessWidget {
const Testsliver({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text('tes'),
            expandedHeight: 200,
            stretch: true,
            floating: true,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: SvgPicture.asset(Assistant().fromImages('undraw_mobile_encryption_re_yw3o.svg')),
              stretchModes: [
                StretchMode.zoomBackground,
                StretchMode.blurBackground,
                StretchMode.fadeTitle,
              ],
            ),
          ),
          SliverToBoxAdapter(child: Container(
            margin: EdgeInsets.symmetric(vertical: 12,),
            height: 300,
            color: Colors.red,
          ),),
          SliverToBoxAdapter(child: Container(
            margin: EdgeInsets.symmetric(vertical: 12,),
            height: 300,
            color: Colors.red,
          ),),
          SliverToBoxAdapter(child: Container(
            margin: EdgeInsets.symmetric(vertical: 12,),
            height: 300,
            color: Colors.red,
          ),),
        ],
      ),
    );
  }
}