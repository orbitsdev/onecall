import 'package:flutter/material.dart';
import 'package:onecall/assistant/assistant.dart';
import 'package:onecall/constant/ui.dart';
import 'package:onecall/dialogs/pop.dart';
import 'package:onecall/helperwidgets/horizontal_space.dart';
import 'package:onecall/helperwidgets/vertical_space.dart';
import 'package:onecall/sample/sampledata.dart';

class ProductVariation extends StatelessWidget {
const ProductVariation({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return GestureDetector(
                      onTap: (){
                        Pop.showProductVariation(context);
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        color: purewhite,
                        padding:
                            EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                        margin: EdgeInsets.symmetric(
                          vertical: 6,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                                text: TextSpan(
                                    text: 'Select Variation',
                                    style: bodytext_h2.copyWith(color: black_75,),
                                    children: [
                                  // TextSpan(
                                  //   text: '(9 flavor)',
                                  //   style: bodytext_h2.copyWith(color: black_50),
                                  // )
                                ])),
                            VerticalSpace(value: 12),
                            Container(

                              decoration: BoxDecoration(
                                                        

                                borderRadius: BorderRadius.circular(4),
                              ),
                              height: 60,
                              child: ListView.builder(
                                shrinkWrap: true,
                                  // physics: NeverScrollableScrollPhysics(),
                                  scrollDirection: Axis.horizontal,
                                  itemCount: sampleproduct.length,
                                  itemBuilder: (context, index) =>Container(
                                    padding: EdgeInsets.all(6),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(4),
                                    color: greybg,
                                    ),
                                      margin: EdgeInsets.only(right: 18),
                                  
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                       Container(
                                        height: 100,
                                        width: 60,
                                        child: Image.asset(Assistant().fromImages('f3.jpg',), fit:  BoxFit.fill,),
                                        decoration: BoxDecoration(
                                          
                                          borderRadius: BorderRadius.circular(4),),
                                       ),
                                       HorizontalSpace(value: 8),
                                        Text('Product name ', style: bodytext_h3.copyWith(color: black_75),)
                                      ],
                                    ),
                                  )),)
                          ],
                        ),
                      ),
                    );
  }
}