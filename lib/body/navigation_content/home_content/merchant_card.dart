import 'package:flutter/material.dart';

import 'package:onecall/assistant/assistant.dart';
import 'package:onecall/constant/ui.dart';
import 'package:onecall/helperwidgets/horizontal_space.dart';
import 'package:onecall/helperwidgets/vertical_space.dart';
import 'package:onecall/sample/sampledata.dart';

class MerchantCard extends StatelessWidget {

final String tag;
final String image;
final String title;
final  String description;
final String km;

  const MerchantCard({super.key, required this.tag, required this.image, required this.title, required this.description, required this.km});
  
  @override
  Widget build(BuildContext context){
    return Container(
                                width: MediaQuery.of(context).size.width / 1.8,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    color: purewhite),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 156,
                                      child: Stack(
                                        fit: StackFit.expand,
                                        children: [
                                          Hero(
                                            tag: tag,
                                            child: Image.asset(
                                              Assistant().fromImages(image),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          Positioned(
                                            top: 8,
                                            left: 8,
                                            child: Container(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 8.0, vertical: 4),
                                              decoration: BoxDecoration(
                                                  color: Colors.black
                                                      .withOpacity(0.5),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12)),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Icon(Icons.directions_walk,
                                                      color: a_yellow,
                                                      size: 16),
                                                  HorizontalSpace(value: 4),
                                                  Text(
                                                   km,
                                                    style: bodytext_h3.copyWith(
                                                        color: purewhite),
                                                  )
                                                ],
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        padding: EdgeInsets.all(8),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(16),
                                              bottomRight: Radius.circular(16)),
                                          color: purewhite,
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              title,
                                              style: bodytext_h2.copyWith(
                                                  color: black_75,
                                                  fontWeight: FontWeight.w700,
                                                  height: 1),
                                            ),
                                            VerticalSpace(value: 4),
                                            Text(
                                              description *
                                                  2,
                                              style: bodytext_h4.copyWith(
                                                  color: black_75, height: 1),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                margin: EdgeInsets.only(right: 12, bottom: 8),
                              );
  }
}
