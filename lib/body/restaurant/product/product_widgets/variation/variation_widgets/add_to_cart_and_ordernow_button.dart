import 'package:flutter/material.dart';
import 'package:onecall/constant/ui.dart';
import 'package:onecall/helperwidgets/vertical_space.dart';

class AddToCartAndOrdernowButton extends StatelessWidget {
const AddToCartAndOrdernowButton({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Container(
            height: 60,
            color: purewhite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
             
                Expanded(
                  child: Container(
                
                    color: green,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.shopping_basket_outlined,
                          color: purewhite,
                        ),
                        Text(
                          'Add to Cart',
                          style: bodytext_h3.copyWith(
                            color: purewhite,
                          ),
                        ),
                        VerticalSpace(value: 3),
                        
                      ],
                    ),
                  ),
                ),
             
                Expanded(
                  child: Container(
                    constraints: BoxConstraints(
                      minWidth: MediaQuery.of(context).size.width * 0.3,
                    ),
                    padding:
                        EdgeInsets.only(right: 8, left: 4, top: 4, bottom: 4),
                    color: primary,
                    child: Center(
                      child: Text(
                        'Order Now',
                        style: bodytext_h2.copyWith(
                            color: purewhite, fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
  }
}