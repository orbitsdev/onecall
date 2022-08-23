import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:onecall/assistant/assistant.dart';
import 'package:onecall/constant/ui.dart';
import 'package:onecall/helperwidgets/vertical_space.dart';
import 'package:onecall/widgets/starting_button.dart';
import 'package:onecall/widgets/steps_text.dart';

class SetupInformationForMobileScreen extends StatelessWidget {
const SetupInformationForMobileScreen({ Key? key }) : super(key: key);
static String screenName = "/setupformobile";

  @override
  Widget build(BuildContext context){
    var mediaquery = MediaQuery.of(context).size;
    return SafeArea(
      child: GestureDetector(
        onTap: ()=> FocusScope.of(context).unfocus(),
        child: Scaffold(
          extendBody: true,

          appBar: AppBar(
                elevation: 0,
                backgroundColor: Colors.transparent,
                leading: InkWell(
                  borderRadius: BorderRadius.circular(100),
                  onTap: (){
                    Get.back();
                  },
                  child: Container(
                    height: 34,
                    width: 34,
                    child:  Icon(Icons.arrow_back_outlined, color: primary,),
                  ),
                )
              ),
          body: SingleChildScrollView(
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            padding: EdgeInsets.only(right: screenPadding, left:screenPadding,bottom: screenPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
             mainAxisSize: MainAxisSize.max,
             children: [
              Text('Hi Brian Kate Romo Trishia', style: header_h1.copyWith(
                color: black_75,
                fontWeight: FontWeight.w700
              ),),
              VerticalSpace(value: 8),
              Text('Congratulations!', style: bodytext_h1.copyWith(
                color: black_75,
                fontWeight: FontWeight.w700
              ),),
              VerticalSpace(value: 8),
              Text('You have successfully create onecall account. You can use now use our service.', style: bodytext_h2.copyWith(
                color: black_75,
              ),),
             
              VerticalSpace(value: mediaquery.height * 0.06),
               Container(
                  height: mediaquery.height * 0.33,
                   child:
                        SvgPicture.asset(
                      Assistant().fromImages(
                        'undraw_happy_news_re_tsbd.svg',
                      ),
                      fit: BoxFit.contain,
                    ),
                  
                  ),
                         
             VerticalSpace(value: mediaquery.height * 0.06),
              StartingButton(label: 'Let\'s Go', textcolor: purewhite,)
              
             ], 
            ),
          ),
        ),
      ),
    );
  }
}