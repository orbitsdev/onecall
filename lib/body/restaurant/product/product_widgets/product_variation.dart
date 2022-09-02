import 'package:flutter/material.dart';

import 'package:onecall/assistant/assistant.dart';
import 'package:onecall/constant/controllers.dart';
import 'package:onecall/constant/ui.dart';
import 'package:onecall/dialogs/pop.dart';
import 'package:onecall/helperwidgets/horizontal_space.dart';
import 'package:onecall/helperwidgets/vertical_space.dart';
import 'package:onecall/models/cart_product.dart';
import 'package:onecall/models/product.dart';
import 'package:onecall/sample/sampledata.dart';

class ProductVariation extends StatelessWidget {

final Product product;
  const ProductVariation({
    Key? key,
    required this.product,
  }) : super(key: key);



  @override
  Widget build(BuildContext context){
    return GestureDetector(
                      onTap: (){

                        restaurantcontroller.setCartProduct(context, product);
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
                                    text: 'Select ${product.variation[0].name}',
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
                                  itemCount: product.variation[0].dynamicOption.length,
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
                                        decoration: BoxDecoration(
                                          
                                          borderRadius: BorderRadius.circular(4),),
                                        child: Image.asset(Assistant().fromImages(product.variation[0].dynamicOption[index].imagePath,), fit:  BoxFit.fill,),
                                       ),
                                       HorizontalSpace(value: 8),
                                        Text(product.variation[0].dynamicOption[index].name, style: bodytext_h3.copyWith(color: black_75),)
                                      ],
                                    ),
                                  )),)
                          ],
                        ),
                      ),
                    );
  }
}
