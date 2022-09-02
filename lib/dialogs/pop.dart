import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:onecall/assistant/assistant.dart';
import 'package:onecall/body/restaurant/product/product_widgets/variation/variation_widgets/option_card.dart';

import 'package:onecall/constant/ui.dart';
import 'package:onecall/controllers/restaurant_controller.dart';
import 'package:onecall/helperwidgets/vertical_space.dart';
import 'package:onecall/models/product.dart';
import 'package:onecall/widgets/line.dart';
import 'package:onecall/widgets/pop_up_button.dart';

class Pop {
  static showLoginProgress(BuildContext context,
      [String message = "Please wait while we process this request",
      String progresspath = "62266-walking-orange (1).json"]) {
    showDialog(
        context: context,
        builder: (context) {
          return Dialog(
            elevation: 0,
            backgroundColor: Colors.transparent,
            child: Container(
              padding:
                  const EdgeInsets.only(bottom: 16, right: 16, left: 16, top: 12),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    height: 200,
                    child: Lottie.asset(
                      Assistant().fromImages(progresspath),
                      fit: BoxFit.cover,
                    ),
                  ),
                  Text(
                    message,
                    style: bodytext_h2.copyWith(
                        color: purewhite, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  const VerticalSpace(value: 16),
                ],
              ),
            ),
          );
        });
  }

  static showError(BuildContext context,
      [String title = "Something went wrong ",
      String bodytext = "An unexpected error occured. Please try again",
      String errorimage = '101962-oh-no.json']) {
    showDialog(
        context: context,
        builder: (context) {
          return Dialog(
            child: Container(
              padding:
                  const EdgeInsets.only(bottom: 16, right: 16, left: 16, top: 12),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    height: 200,
                    child: Lottie.asset(
                      Assistant().fromImages(errorimage),
                      fit: BoxFit.cover,
                    ),
                  ),
                  Text(
                    title,
                    style: bodytext_h1.copyWith(
                        color: black_75, fontWeight: FontWeight.bold),
                  ),
                  const VerticalSpace(value: 8),
                  Text(
                    bodytext,
                    style: bodytext_h3.copyWith(color: black_75),
                    textAlign: TextAlign.center,
                  ),
                  const VerticalSpace(value: 16),
                  InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: PopUpButton(
                        label: 'Ok'.toUpperCase(),
                        textcolor: purewhite,
                        bgcolor: primary,
                      ))
                ],
              ),
            ),
          );
        });
  }

  static showProductVariation(BuildContext context, Product product) {
    showModalBottomSheet(
      isScrollControlled: true,
      isDismissible: false,
      context: context,
      builder: (BuildContext context) =>
      GetBuilder<RestaurantController>(
        builder: (rcontroller)=> Container(
      //          padding: EdgeInsets.symmetric(vertical: 6, horizontal: 24,),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
             Container(
        padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 24,),
        constraints: BoxConstraints(
          minHeight: 100,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                height: 100,
                width: Get.width,
                color: Colors.amber,
                child: Image.asset(Assistant().fromImages('${rcontroller.newproduct.value.image}'),fit: BoxFit.cover,),
              ),
            ),
      
            Expanded(
              child: Container(
                padding: EdgeInsets.only(left: 8),
                width: Get.width,
                constraints: BoxConstraints(
                  minHeight: 100,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(onPressed: (){
                          rcontroller.closeSelection();
                        }, icon: Icon(Icons.close, color: black_75,))
                    ],),
                    Text('${rcontroller.newproduct.value.name}' , style: bodytext_h2,),
                    VerticalSpace(value: 4),
                    Text('₱ ${product.price.toStringAsFixed(0)}', style: bodytext_h2.copyWith(color: primary),),
                  ],
                ),
              ),
            ),
          ],
        ),
      
          ),
            //ProductVariationPriceClose(name: product.name as String, price:product.price.toString(), image: product.image as String),
            const Line(),

            if(rcontroller.newproduct.value.variation !=  null && rcontroller.newproduct.value.variation!.isNotEmpty)
            Container(
              constraints: BoxConstraints(
                minHeight: 230,
                maxHeight: 300,
              ),
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(
                  vertical: 6,
                  horizontal: 24,
                ),
                child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children:  rcontroller.newproduct.value.variation!.asMap().entries.map(
            (variation) => Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    variation.value.name,
                    style: bodytext_h2.copyWith(color: black_75),
                  ),
                  const VerticalSpace(value: 6),
                  Wrap(
                    alignment: WrapAlignment.start,
                    crossAxisAlignment: WrapCrossAlignment.start,
                    children: variation.value.dynamicOption.asMap().entries
                        .map((option) => GestureDetector
                        (
                          onTap: (){
                              
                              rcontroller.handleVariation(variation.value.name, option.value.name);

                          },  
                          child: OptionCard(option:option.value)))
                        .toList(),
                  ),
                ],
              ),
            ),
          )
          .toList(),
    ),
              ),
            ),
            const Line(),
             Container(
          margin: EdgeInsets.only(bottom: MediaQuery.of(context).size.height  * 0.01),
            //color: Colors.red,
                padding: EdgeInsets.symmetric(
                  vertical: 16,
                  horizontal: 24,
                ),
      
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Quantity',
                      style: bodytext_h2.copyWith(color: black_75),
                    ),
                    GestureDetector(
                      onTap: (){
                        rcontroller.changeProductQuantity(product,  quantityFunctionType.subtract );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(width: 0.5, color: black_12)),
                        child: Row(
                          children: [
                            Container(
                              height: 28,
                              width: 28,
                              decoration: BoxDecoration(
                                border: Border(
                                  right: BorderSide(color: black_12, width: 0.5),
                                ),
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.remove_rounded,
                                  color: black_12,
                                ),
                              ),
                            ),
                            Container(
                                width: MediaQuery.of(context).size.width * 0.16,
                                child: Center(
                                    child: Text(
                                  '${rcontroller.newproduct.value.quantity}',
                                  style: bodytext_h2.copyWith(color: black_75),
                                ))),
                            GestureDetector(
                              onTap: (){
                                print('add qunatity');
                                                        rcontroller.changeProductQuantity(product,  quantityFunctionType.add );
                              },
                              child: Container(
                                height: 28,
                                width: 28,
                                decoration: BoxDecoration(
                                  border: Border(
                                    left: BorderSide(color: black_12, width: 0.5),
                                  ),
                                ),
                                child: Center(
                                  child: Icon(
                                    Icons.add_rounded,
                                    color: black_12,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
              height: 60,
              color: purewhite,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(child: Container(
                    padding: EdgeInsets.all(4),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                       crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text('Total', style: bodytext_h3.copyWith(color: black_75),),
                        Text('₱ ${rcontroller.newproduct.value.price!.toStringAsFixed(0)}', style: bodytext_h2.copyWith(color: primary, fontWeight: FontWeight.w700),),
                      ],
                    ),
                  )),
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
            ),
            
            
          ],
        ),
          ),
      ));
      
  }
}
