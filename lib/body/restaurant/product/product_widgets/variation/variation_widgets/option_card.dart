import 'package:flutter/material.dart';
import 'package:onecall/assistant/assistant.dart';
import 'package:onecall/constant/ui.dart';
import 'package:onecall/helperwidgets/horizontal_space.dart';
import 'package:onecall/models/dynamic_option.dart';
import 'package:onecall/models/product.dart';

import 'package:onecall/sample/sampledata.dart';

class OptionCard extends StatelessWidget {
final DynamicOption option;
  const OptionCard({
    Key? key,
    required this.option,
  }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          border: option.isSelected
              ? Border.all(
                  color: primary,
                  width: 1,
                )
              : Border.all(
                  color: black_12,
                  width: 1,
                ),
          color: option.isSelected ? primary.withOpacity(0.1) : greybg,
        ),
        margin: EdgeInsets.only(top: 4, right: 4, left: 0, bottom: 4),
        child: Stack(children: [
          Padding(
            padding: EdgeInsets.only(top: 4, right: 8, left: 0, bottom: 4),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                    margin: EdgeInsets.only(left:  option.isSelected?  28 :  8),
                    height: 34,
                    width: 34,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(4)),
                    child: Image.asset(
                      Assistant().fromImages(
                        option.imagePath,
                      ),
                      fit: BoxFit.cover,
                    )),
                HorizontalSpace(value: 4),
                Text(
                  '${option.value}',
                  style: bodytext_h3.copyWith(
                      color: option.isSelected ? primary : black_25),
                ),
              ],
            ),
          ),
          if (option.isSelected)
            Positioned(
              top: 0,
              left: 0,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(12),
                      bottomLeft: Radius.circular(2),
                      topRight: Radius.circular(2)),
                  color: primary,
                ),
                height: 24,
                width: 24,
                child: Center(
                  child: Icon(Icons.check_outlined, size: 16, color: purewhite),
                ),
              ),
            )
        ]),
      );
  }
}
