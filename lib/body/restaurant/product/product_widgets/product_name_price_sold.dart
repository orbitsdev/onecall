import 'package:flutter/material.dart';

import 'package:onecall/constant/ui.dart';
import 'package:onecall/helperwidgets/vertical_space.dart';

class ProductNamePriceSold extends StatelessWidget {
final String name;
final String price;
final String discountprice;
final String sold;
  const ProductNamePriceSold({
    Key? key,
    required this.name,
    required this.price,
    required this.discountprice,
    required this.sold,
  }) : super(key: key);
  @override
  Widget build(BuildContext context){
    return Flexible(
                      child: Container(
                        color: purewhite,
                        padding: EdgeInsets.symmetric(
                          vertical: 16,
                          horizontal: 24,
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              flex: 4,
                              child: Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '${name}',
                                      style: bodytext_h1.copyWith(
                                          color: black_75,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    VerticalSpace(value: 16),

                                    Row(
                                      children: [
                                        Expanded(
                                          child: RichText(
                                            text: TextSpan(
                                                text: '₱ ${discountprice}',
                                                style: bodytext_h1.copyWith(
                                                  fontWeight: FontWeight.w700,
                                                  color: primary,
                                                ),
                                                children: [
                                                  TextSpan(
                                                      text: '₱ ${price}',
                                                      style: bodytext_h3.copyWith(
                                                          decoration:
                                                              TextDecoration
                                                                  .lineThrough,
                                                          color: black_25))
                                                ]),
                                          ),
                                        ),
                                        Text('${sold} Sold',
                                            style: bodytext_h3.copyWith(
                                              color: black_75,
                                            )),
                                      ],
                                    )
                                    
                                  ],
                                ),
                              ),
                            ),

 
                          ],
                        ),
                      ),
                    );
  }
}
