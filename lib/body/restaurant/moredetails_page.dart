import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onecall/assistant/assistant.dart';
import 'package:onecall/body/restaurant/restaurant_widgets/more_details_row_card.dart';
import 'package:onecall/constant/ui.dart';
import 'package:onecall/helperwidgets/horizontal_space.dart';
import 'package:onecall/helperwidgets/vertical_space.dart';
import 'package:onecall/widgets/circle_button.dart';
import 'package:onecall/widgets/notification_icon.dart';
import 'package:onecall/widgets/svertical_space.dart';

class MoredetailsPage extends StatelessWidget {
static String screenName = "/morerestaurantdetails";
  
final String? restaurantId;
  final String? name;
  final String? image;
  final String? circleimage;
  final String? kilometerDistance;
  final String? address;
  final String? longDescription;
  final String? openAt;
  final String? closeAt;
  final String? from;
  final String? until;

  const MoredetailsPage({super.key, this.restaurantId, this.name, this.image, this.circleimage, this.kilometerDistance, this.address, this.longDescription, this.openAt, this.closeAt, this.from, this.until});

  

  @override
  Widget build(BuildContext context){
    return Scaffold(
  
      body: CustomScrollView(
        
        slivers: [

          SliverAppBar(
            floating: true,
            pinned: true,
            backgroundColor: purewhite,
            leading: IconButton(onPressed: (){
              Get.back();
            }, icon: Icon(Icons.arrow_back, color: black_75,),),
                  title: Text('Details', style: bodytext_h1.copyWith(color: black_75),),
                  centerTitle: true,
                 
          ),

          SliverToBoxAdapter(
            child: Container(
              height:Get.height * 0.30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24)
                
              ),
              child: Image.asset(Assistant().fromImages('f1.jpg'), fit: BoxFit.cover,),
            ),
          ),
          SverticalSpace(height: 24),
          SliverToBoxAdapter(
            
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 0, horizontal: 24,),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24)
                
              ),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('${name}', style: bodytext_h1.copyWith(color: black_75, fontWeight: FontWeight.w700),),
                  VerticalSpace(value: 6),
                  //Text('Total Sold ', style: bodytext_h3.copyWith(color: black_50, ),),
                  VerticalSpace(value: 16),
                  Flexible(
                    child: MoreDetailsRowCard(iconcolor: black_50, icon: Icons.location_on, text: '${address}'),
                  ),
                  VerticalSpace(value: 2),
                  Flexible(
                    child: MoreDetailsRowCard(iconcolor: black_50, icon: Icons.access_time_filled, text: ' ${openAt} - ${closeAt} | ${from}  - ${until}'),
                  ),
                  VerticalSpace(value: 2),
                  Flexible(
                    child: MoreDetailsRowCard(iconcolor: black_50, icon: Icons.directions_walk, text: '${kilometerDistance} km'),
                  ),
                  

                  VerticalSpace(value: 10),
                  Container(
                    decoration: BoxDecoration(
                      color: greybutton,
                      borderRadius: BorderRadius.circular(14),
                    ),

                    child: Text('${longDescription}' , style: bodytext_h2.copyWith(height: 1.3, color: black_50,  ),),
                    padding: EdgeInsets.all(12),
                  )

                ],
              ),
            ),

          )
          ],
      ),
    );
  }
}