import 'package:flutter/material.dart';
import 'package:onecall/constant/ui.dart';
import 'package:onecall/helperwidgets/vertical_space.dart';
import 'package:onecall/sample/sampledata.dart';

class ExtraCard extends StatelessWidget {
  final Extra extra;

  const ExtraCard({super.key, required this.extra});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 4.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Line(
          //   color: greybutton,
          // ),
          //VerticalSpace(value: 6),

          RichText(
            text: TextSpan(
                text: '${extra.title} \n',
                style: bodytext_h4.copyWith(
                  color: black_50,
                ),
                children: extra.collection
                    .asMap()
                    .entries
                    .map(
                      (e) => TextSpan( text: extra.collection.length -1 == e.key ? '${e.value} ':   '${e.value} | ', style: bodytext_h4.copyWith(color: black_25, fontStyle: FontStyle.italic)),
                    )
                    .toList()
                //  extra.collection.map((e) =>
                //  TextSpan(

                //       text: ' ${e} |' ,
                //       style: bodytext_h4.copyWith(
                //           color: black_25, fontStyle: FontStyle.italic)),

                // ).toList()

                ),
          ),
          // VerticalSpace(value: 8),
        ],
      ),
    );
  }
}
