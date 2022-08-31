import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onecall/assistant/assistant.dart';
import 'package:onecall/constant/ui.dart';
import 'package:onecall/helperwidgets/horizontal_space.dart';
import 'package:onecall/widgets/circle_button.dart';

class ProductVariationPriceClose extends StatelessWidget {
const ProductVariationPriceClose({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return  Container(
              padding: EdgeInsets.only(top: 8, bottom: 8, right: 8, left: 24),
              constraints: BoxConstraints(
                minHeight: 50,
              ),
              // color: Colors.blue,
              child: Stack(children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Expanded(
                      child: Container(
                          height: 140,
                          width: 140,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: Colors.amber,
                          ),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(4),
                              child: Image.asset(
                                Assistant().fromImages(
                                  'f2.jpg',
                                ),
                                fit: BoxFit.fill,
                              ))),
                    ),
                    HorizontalSpace(value: 12),
                    Expanded(
                      child: Container(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'P 10000',
                              style: bodytext_h1.copyWith(color: primary),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                Positioned(
                  top: -5,
                  right: -5,
                  child: CircleButton(
                    icon: Icons.close,
                    function: () {
                      Get.back();
                    },
                    iconcolor: black_25,
                  ),
                )
              ]),
            );

  }
}