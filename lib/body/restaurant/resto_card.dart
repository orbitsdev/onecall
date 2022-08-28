import 'package:flutter/material.dart';
import 'package:onecall/assistant/assistant.dart';
import 'package:onecall/constant/ui.dart';
import 'package:onecall/helperwidgets/horizontal_space.dart';

class RestoCard extends StatelessWidget {

  final String image;
  final String cicleimage;
  final String restaurantname;
  final String kilometerdistance;
  final String restodetails;
  final String timeopen;
  final String timeclose;
  final String openfrom;
  final String openuntil;

  const RestoCard({super.key, required this.image, required this.cicleimage, required this.restaurantname,  required this.kilometerdistance, required this.restodetails, required this.timeopen, required this.timeclose, required this.openfrom, required this.openuntil});


  @override
  Widget build(BuildContext context){
    return Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    height: 140,
                    width: MediaQuery.of(context).size.width,
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(12), topRight: Radius.circular(12)),
                      child: Image.asset(Assistant().fromImages(image), fit: BoxFit.cover,)),
                    decoration: BoxDecoration(

                        //color: Colors.pink,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12),
                            topRight: Radius.circular(12))),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 16, horizontal:   16),
                    decoration: BoxDecoration(
                    color: purewhite,
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(12), bottomRight: Radius.circular(12)),
                    ),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,

                          children: [
                            Expanded(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ClipOval(
                                    child: Container(
                                      
                                      height: 34,
                                      width: 34,
                                      color: primary,
                                      child: Image.asset(Assistant().fromImages(cicleimage), fit: BoxFit.cover,),
                                    ),
                                  ),
                                  HorizontalSpace(value: 16),
                                  Expanded(
                                    child: Text(
                                      restaurantname,  style: bodytext_h2.copyWith(
                                          fontWeight: FontWeight.w700,
                                          color: black_75,
                                          height: 1,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          HorizontalSpace(value: 6),
                            Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.directions_walk,
                                    size: 14,
                                    color: Colors.green,
                                  ),
                                  HorizontalSpace(value: 4),
                                  Text(
                                    kilometerdistance,
                                    style: bodytext_h4.copyWith(color: black_50),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      
                        Container(
                     // color: Colors.purple,
                      padding: EdgeInsets.symmetric(
                        vertical: 8.0,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                             
                                height: 30,
                                width: 30,
                                child: Center(child: Icon(Icons.location_on_outlined, color: black_25,))),
                              HorizontalSpace(value: 8),
                              Expanded(
                                child: Text(
                                    restodetails,
                                  style: bodytext_h3.copyWith(color: black_25),
                                ),
                              ),
                            ],
                          ),
                          
                          Row(
                            children: [
                              Container(
                             
                                height: 30,
                                width: 30,
                                child: Center(child: Icon(Icons.access_time, color: black_25, size:  20,))),
                              HorizontalSpace(value: 8),
                              RichText(text: TextSpan(text:'Open ( ', style: bodytext_h5.copyWith(color: primary, fontWeight: FontWeight.w700), children: [
                                TextSpan(text: '${timeopen}' ) ,
                                TextSpan(text: ' - ') ,
                                TextSpan(text: '${timeclose}) ') ,
                                TextSpan(text: '${openfrom}') ,
                                TextSpan(text: ' - ') ,
                                TextSpan(text: '${openuntil}') ,
                              ]),  )
                            ],
                          ),
                         
                         
                        ],
                      ),
                    ),
                      ],
                    ),
                  ),
                  
                ],
              ),
              decoration: BoxDecoration(
                 // color: Colors.blue, 
                  borderRadius: BorderRadius.circular(12)),
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            );
  }
}