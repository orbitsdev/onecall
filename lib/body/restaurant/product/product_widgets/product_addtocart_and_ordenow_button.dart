import 'package:flutter/material.dart';
import 'package:onecall/constant/ui.dart';
import 'package:onecall/helperwidgets/vertical_space.dart';

class ProductAddtocartAndOrdenowButton extends StatelessWidget {
const ProductAddtocartAndOrdenowButton({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Container(
          height: 60,
          color: purewhite,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                constraints: BoxConstraints(
                    minWidth: MediaQuery.of(context).size.width * 0.4,
                    maxWidth: MediaQuery.of(context).size.width * 0.5),
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
                    // Flexible(
                    //   child: Text(
                    //     '4 items',
                    //     style: bodytext_h3.copyWith(color: black_50),
                    //   ),
                    // )
                  ],
                ),
              ),
              Expanded(
                flex: 4,
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  color: primary,
                  child: Center(
                    child: Text(
                      'Order Now',
                      style: bodytext_h2.copyWith(
                          color: purewhite, fontWeight: FontWeight.w700),
                    ),
                  ),

                  //  Row(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  //   crossAxisAlignment: CrossAxisAlignment.center,
                  //   children: [
                  //     Text(
                  //       'Add to cart'.toUpperCase(),
                  //       style: bodytext_h2.copyWith(
                  //           color: purewhite, fontWeight: FontWeight.w700),
                  //     ),
                  //     HorizontalSpace(value: 8),
                  //     Icon(
                  //       Icons.shopping_cart,
                  //       color: purewhite,
                  //       size: 26,
                  //     )
                  //   ],
                  // ),
                ),
              ),
            ],
          ),
        );
  }
}