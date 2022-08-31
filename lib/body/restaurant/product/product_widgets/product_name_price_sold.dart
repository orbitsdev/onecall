import 'package:flutter/material.dart';
import 'package:onecall/constant/ui.dart';
import 'package:onecall/helperwidgets/vertical_space.dart';

class ProductNamePriceSold extends StatelessWidget {
const ProductNamePriceSold({ Key? key }) : super(key: key);

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
                                      'Spicy Chikcen Joy' * 4,
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
                                                text: '₱ 1500 ',
                                                style: bodytext_h1.copyWith(
                                                  fontWeight: FontWeight.w700,
                                                  color: primary,
                                                ),
                                                children: [
                                                  TextSpan(
                                                      text: '₱ 1000',
                                                      style: bodytext_h3.copyWith(
                                                          decoration:
                                                              TextDecoration
                                                                  .lineThrough,
                                                          color: black_25))
                                                ]),
                                          ),
                                        ),
                                        Text('203 Sold',
                                            style: bodytext_h3.copyWith(
                                              color: black_75,
                                            )),
                                      ],
                                    )
                                    // Container(
                                    //   width: MediaQuery.of(context).size.width,

                                    //   child: Row(
                                    //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    //     crossAxisAlignment:     CrossAxisAlignment.end,

                                    //     mainAxisSize: MainAxisSize.min,
                                    //     children: [
                                    //       Container(
                                    //         child: Row(
                                    //           mainAxisAlignment: MainAxisAlignment.start,
                                    //           crossAxisAlignment: CrossAxisAlignment.end,
                                    //           children: [
                                    //             Text(
                                    //               '₱ 8009',
                                    //               style: bodytext_h1.copyWith(
                                    //                 fontWeight: FontWeight.w700,
                                    //                 color: primary,
                                    //               ),
                                    //             ),
                                    //               HorizontalSpace(value: 4),
                                    //               Text(
                                    //               '₱ 1000' ,
                                    //               style: bodytext_h3.copyWith(
                                    //                   decoration: TextDecoration
                                    //                       .lineThrough,
                                    //                   color: black_25),
                                    //             ),
                                    //           ],
                                    //         ),
                                    //       ),
                                    //         Text(
                                    //         '203 Sold',
                                    //         style: bodytext_h3.copyWith(
                                    //           color: black_75
                                    //         ),
                                    //       ),
                                    //     ],
                                    //   ),
                                    // ),
                                  ],
                                ),
                              ),
                            ),

                            // Container(
                            //   height: 34,
                            //   width: 34,
                            //   child: Icon(Icons.favorite, color: black_25, size: 26,),
                            // )
                          ],
                        ),
                      ),
                    );
  }
}