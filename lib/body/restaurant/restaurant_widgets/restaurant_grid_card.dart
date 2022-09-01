import 'package:dynamic_height_grid_view/dynamic_height_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:onecall/assistant/assistant.dart';
import 'package:onecall/body/restaurant/product/resto_product_details_screen.dart';
import 'package:onecall/constant/ui.dart';
import 'package:onecall/helperwidgets/vertical_space.dart';
import 'package:onecall/models/product.dart';
import 'package:onecall/models/products.dart';
import 'package:onecall/models/restaurant.dart';
import 'package:onecall/widgets/circle_button.dart';

class RestaurantGridCard extends StatelessWidget {

final List<Products> productcollection;
final ScrollController scrollController;

  const RestaurantGridCard({super.key, required this.productcollection, required this.scrollController});



  @override
  Widget build(BuildContext context){
    return CustomScrollView(
      slivers: [

           SliverPadding(
                padding: EdgeInsets.symmetric(vertical: 12, horizontal: 8),
                sliver: SliverDynamicHeightGridView(
                  controller: scrollController,
                      itemCount: productcollection.length,
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      rowCrossAxisAlignment: CrossAxisAlignment.end,
                      
                      builder: (ctx, index) => GestureDetector(
                        onTap: (){
                          Get.to(()=> RestoProductDetailsScreen(product: productcollection[index],));
                        },
                        child: Container(
                          
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Stack(
                                children:[
                                  
                                    Container(
                                  height: 140,
                                  child: Image.asset(Assistant().fromImages(productcollection[index].image)),
                                  width: MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(
                                   borderRadius: BorderRadius.only(topLeft: Radius.circular(12), topRight: Radius.circular(12)),
                                  ),
                                ),
                                
                                
                                if(productcollection[index].discount != null )Positioned(
                                  bottom: 0,
                                  right: 8,
                                  child: Container(
                                    padding: EdgeInsets.symmetric(vertical: 6.0, horizontal: 12,),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(40),
                                    color: a_red,
                                    ),
                                    child: Center(
                                      child: Text('${productcollection[index].discount}', style: bodytext_h4.copyWith(color: purewhite),),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 6,
                                  left: 6,
                                  child: CircleButton(iconcolor: black_25,
                                   //bgcolor: primary.withOpacity(0.1),
                                   
                                    icon:Icons.favorite, function: (){
                          
                                  })
                                ),
                          
                                ] 
                                
                              ),
                          
                              Container(
                          
                                padding: EdgeInsets.all(12),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(productcollection[index].name,
                                    style: secondarytitle,
                                    textAlign: TextAlign.center,
                                    ),
                                    VerticalSpace(value: 8),
                                    Text('₱ ${productcollection[index].price}', style: bodytext_h3.copyWith(color: primary, fontWeight: FontWeight.bold),),
                                        
                                    ],
                                ),
                              ),
                             
                            ],
                          ),
                          
                                    
                          decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: purewhite,
                           
                          ),
                        ),
                      )
                    ),
              ),
      ],
      
    );
  }
}
