import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onecall/constant/ui.dart';
import 'package:onecall/helperwidgets/vertical_space.dart';
import 'package:onecall/widgets/starting_button.dart';

class TermsAndConditionScreen extends StatelessWidget {
const TermsAndConditionScreen({ Key? key }) : super(key: key);

static String screenName = "/termsandcondtion";
  @override
  Widget build(BuildContext context){
     return Scaffold(
      
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,

        leading:  IconButton(onPressed: (){
            Get.back();

         }, icon: Icon(Icons.arrow_back_outlined, color: primary,) )
        
      ),
      body: Container(
        padding:EdgeInsets.only(right: screenPadding, left: screenPadding, bottom: MediaQuery.of(context).size.height * 0.15,),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            VerticalSpace(value: 4),

            Text('Terms & Condition', style: header_h3.copyWith(
                color: black_75,
                fontWeight: FontWeight.w600
            ),),
            VerticalSpace(value: 16),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
            
              ),
              child: Scrollbar(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum' * 3, style: bodytext_h3.copyWith(color: black_50, height: 1.5),),
                    ],
                  ),
                ),
              ),
              ),
          ),

        
        ],),

        
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: EdgeInsets.symmetric(vertical: 24, horizontal:24,),
      
        child: InkWell(
            onTap: (){
               Get.back();
            },
            child: StartingButton(label: 'Continue', textcolor: purewhite, )
            ),
      ),
    );
  }
}