import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:onecall/assistant/assistant.dart';
import 'package:onecall/constant/ui.dart';
import 'package:onecall/helperwidgets/horizontal_space.dart';
import 'package:onecall/helperwidgets/vertical_space.dart';
import 'package:onecall/sample/sampledata.dart';
import 'package:onecall/widgets/circle_button.dart';
import 'package:onecall/widgets/extran_content.dart';
import 'package:onecall/widgets/line.dart';

class CartScreen extends StatelessWidget {
  static String screenName = "/cart";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: purewhite,
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              centerTitle: true,
              backgroundColor: purewhite,
              title: Text(
                'My Food Cart',
                style: bodytext_h1.copyWith(color: black_75),
              ),
              automaticallyImplyLeading: false,
              leading: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_back_ios_new_outlined,
                    color: primary,
                  )),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.delete, color: a_red, size: 24),
                ),
              ],
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                  childCount: 10,
                  (contex, index) => Container(
                        //color: Colors.red,
                        decoration: BoxDecoration(
                          border: Border(
                            top: borderblack,
                          ),
                        ),
                        padding: EdgeInsets.only(top: 6, bottom: 8),
                        // margin:
                        //     EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Container(
                                child: Center(
                                  child: Transform.scale(
                                    scale: 1.2,
                                    child: Checkbox(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(4)),
                                        activeColor: primary,
                                        value: true,
                                        onChanged: (value) {}),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadiusDirectional.circular(12),
                                  color: Colors.amber,
                                ),
                                width: 115,
                                height: 100,
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(12),
                                    child: Image.asset(
                                      Assistant().fromImages(
                                        'jolibee.png',
                                      ),
                                      fit: BoxFit.fill,
                                    )),
                              ),
                            ),
                            Expanded(
                              flex: 3,
                              child: Container(
                                padding: EdgeInsets.only(
                                    top: 4, bottom: 4, left: 12, right: 8),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Black Pepper ',
                                      style: bodytext_h3.copyWith(
                                        color: black_75,
                                        //fontWeight: FontWeight.w500
                                      ),
                                    ),

                                    if(sample_extra_list.length > 0)
                                     ExtranContent(extra: sample_extra_list),

                                      // Container(
                                    //   child: Column(
                                    //     crossAxisAlignment:
                                    //         CrossAxisAlignment.start,
                                    //     children: [
                                    //       // Line(
                                    //       //   color: greybutton,
                                    //       // ),
                                    //       VerticalSpace(value: 6),
                                    //       RichText(
                                    //         text: TextSpan(
                                    //             text: 'Add On \n',
                                    //             style: bodytext_h4.copyWith(
                                    //               color: black_50,
                                    //             ),
                                    //             children: [
                                    //               TextSpan(
                                    //                   text: 'Egg, Chees, Bacon',
                                    //                   style:
                                    //                       bodytext_h4.copyWith(
                                    //                           color: black_25,
                                    //                           fontStyle:
                                    //                               FontStyle
                                    //                                   .italic)),
                                    //             ]),
                                    //       ),
                                    //     ],
                                    //   ),
                                    // ),
                                    
                                    
                                    
                                
                                    RichText(
                                      text: TextSpan(
                                        style: bodytext_h3.copyWith(
                                            color: primary),
                                        text: '₱ 800',
                                        //   children: [
                                        //  //   TextSpan(text: ' '),
                                        //     TextSpan(
                                        //   style: bodytext_h2.copyWith(
                                        //       color: black_75),
                                        //   text: '₱ 800 ',),
                                        //     //   TextSpan(text: '₱ 400', style: bodytext_h3.copyWith(color: black_25, decoration: TextDecoration.lineThrough))
                                        //   ]
                                      ),
                                    ),
                                    Line(
                                      color: greybutton,
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          height: 26,
                                          width: 26,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(6),
                                            border: Border.all(
                                                width: 0.5, color: black_25),
                                            color: purewhite,
                                          ),
                                          child: Icon(
                                            Icons.remove_rounded,
                                            color: black_12,
                                          ),
                                        ),
                                        HorizontalSpace(
                                            value: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.04),
                                        Text('4',
                                            style: bodytext_h3.copyWith(
                                              color: black_75,
                                            )),
                                        HorizontalSpace(
                                            value: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.04),
                                        Container(
                                          height: 26,
                                          width: 26,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(6),
                                            border: Border.all(
                                                width: 0.5, color: black_25),
                                            color: purewhite,
                                          ),
                                          child: Icon(
                                            Icons.add_rounded,
                                            color: black_12,
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      )),
            ),
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Container(
          height: MediaQuery.of(context).size.height * 0.1,
          color: purewhite,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Container(
                          child: Row(
                            children: [
                              Transform.scale(
                                scale: 1.4,
                                child: Checkbox(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(4)),
                                    activeColor: Colors.green[600],
                                    value: true,
                                    onChanged: (value) {}),
                              ),
                              Text(
                                'All',
                                style: bodytext_h2,
                              )
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding:
                              EdgeInsets.symmetric(vertical: 6, horizontal: 4),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                'Total Payment',
                                style: bodytext_h3.copyWith(color: black_75),
                              ),
                              Flexible(
                                  child: Text(
                                '₱ 20000',
                                style: bodytext_h2.copyWith(
                                    color: Colors.red,
                                    fontWeight: FontWeight.w700),
                              )),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 24, horizontal: 8),
                  color: primary,
                  child: Center(
                    child: Text('Checkout (1)',
                        style: bodytext_h2.copyWith(color: purewhite)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
