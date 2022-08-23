import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:onecall/assistant/assistant.dart';
import 'package:onecall/constant/ui.dart';
import 'package:onecall/helperwidgets/vertical_space.dart';
import 'package:onecall/widgets/custome_text_field.dart';
import 'package:onecall/widgets/starting_button.dart';
import 'package:onecall/widgets/steps_text.dart';

class SetupInformationScreen extends StatefulWidget {
const SetupInformationScreen({ Key? key }) : super(key: key);
static String screenName = "/setupinformationoogle";

  @override
  State<SetupInformationScreen> createState() => _SetupInformationScreenState();
}

class _SetupInformationScreenState extends State<SetupInformationScreen> {
  late TextEditingController phonenumber;
  @override
  void initState() {
    phonenumber = TextEditingController();
    // TODO: implement initState
    super.initState();
  }
  @override
  void dispose() {
    phonenumber.dispose();

    // TODO: implement dispose
    super.dispose();
  }


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
              VerticalSpace(value: 8),
              Text('Complete your personal details below first to continue.', style: bodytext_h2.copyWith(
                color: black_75,
              ),),
              VerticalSpace(value: 20),
               Container(

                    child:Center(
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          ClipOval(
                            child: Container(
                              height:profilesize,
                              width:profilesize,
                              child: Image.asset(Assistant().fromImages('Rectangle 4.png',), fit: BoxFit.cover,),
                             decoration: BoxDecoration(
                             )
                            ),
                          ),
                          Positioned(
                            bottom: -4,
                            
                            child: IconButton(onPressed: (){ }, icon: Icon(Icons.camera_alt,size: 34, color: purewhite,)))
                        ],
                      ),
                    )
                    //  SvgPicture.asset(
                    //   Assistant().fromImages(
                    //     'undraw_happy_news_re_tsbd.svg',
                    //   ),
                    //   fit: BoxFit.contain,
                    // ),
                  ),
              VerticalSpace(value: 16),
              CustomeTextField(controller: phonenumber, icon: Icons.phone_android_outlined ,function: (){}, label: 'Mobile', textinputaction: TextInputAction.done, obscure: false, inputype: TextInputType.phone, passwordtype: false),
              VerticalSpace(value: 8),
            StepsText(stepnumber: '1.', text: 'Change profile picture(optional)' ),            
            StepsText(stepnumber: '2.', text: 'Enter your number we will send otp code for verification' ),              
              VerticalSpace(value: 34),
              StartingButton(label: 'Let\'s Go', textcolor: purewhite,)
              
             ], 
            ),
          ),
        ),
      ),
    );
  }
}