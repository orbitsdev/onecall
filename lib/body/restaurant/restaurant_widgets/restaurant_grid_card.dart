import 'package:dynamic_height_grid_view/dynamic_height_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:onecall/assistant/assistant.dart';
import 'package:onecall/constant/ui.dart';
import 'package:onecall/helperwidgets/vertical_space.dart';
import 'package:onecall/widgets/circle_button.dart';

class RestaurantGridCard extends StatelessWidget {
const RestaurantGridCard({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return SliverPadding(
              padding: EdgeInsets.symmetric(vertical: 12, horizontal: 8),
              sliver: SliverDynamicHeightGridView(
                    itemCount: 140,
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    builder: (ctx, index) => Container(
                      
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Stack(
                            children:[
                              
                                Container(
                              height: 140,
                              child: Image.asset(Assistant().fromImages('f3.jpg')),
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                               borderRadius: BorderRadius.only(topLeft: Radius.circular(12), topRight: Radius.circular(12)),
                              ),
                            ),
                            
                            
                            Positioned(
                              bottom: 0,
                              right: 8,
                              child: Container(
                                padding: EdgeInsets.symmetric(vertical: 6.0, horizontal: 12,),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                color: a_red,
                                ),
                                child: Center(
                                  child: Text('20% off', style: bodytext_h4.copyWith(color: purewhite),),
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
                                Text('Chicken with Rice dasdasdda ',
                                style: secondarytitle,
                                textAlign: TextAlign.center,
                                ),
                                VerticalSpace(value: 8),
                                Text('₱ 1000.00', style: bodytext_h3.copyWith(color: primary, fontWeight: FontWeight.bold),),
                                    
                                ],
                            ),
                          ),
                         
                        ],
                      ),
                      
            
                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: purewhite,
                       
                      ),
                    )
                  ),
            );
  }
}