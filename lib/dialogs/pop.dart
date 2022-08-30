import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:onecall/assistant/assistant.dart';
import 'package:onecall/constant/ui.dart';
import 'package:onecall/helperwidgets/horizontal_space.dart';
import 'package:onecall/helperwidgets/vertical_space.dart';
import 'package:onecall/widgets/circle_button.dart';
import 'package:onecall/widgets/extra_content.dart';
import 'package:onecall/widgets/pop_up_button.dart';
import 'package:onecall/widgets/starting_button.dart';

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
                  EdgeInsets.only(bottom: 16, right: 16, left: 16, top: 12),
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
                  VerticalSpace(value: 16),
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
                  EdgeInsets.only(bottom: 16, right: 16, left: 16, top: 12),
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
                  VerticalSpace(value: 8),
                  Text(
                    bodytext,
                    style: bodytext_h3.copyWith(color: black_75),
                    textAlign: TextAlign.center,
                  ),
                  VerticalSpace(value: 16),
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

  static showProductVariation(BuildContext context) {
    showModalBottomSheet(
      isScrollControlled: true,
    //  isDismissible: false,
        context: context,
        builder: (BuildContext context) => Container(
//          padding: EdgeInsets.symmetric(vertical: 6, horizontal: 24,),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                
                 padding: EdgeInsets.only(top: 8, bottom: 8, right: 8, left: 24),
                 constraints: BoxConstraints(minHeight: 50, ),
                // color: Colors.blue,
                 child: Stack(
                   children: [
                    Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Expanded(
                        child: Container(
                          height: 140,
                          width: 140,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                          color: Colors.amber,
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(4),
                            child: Image.asset(Assistant().fromImages('f2.jpg', ),fit: BoxFit.fill,))
                        ),
                      ),
                      HorizontalSpace(value: 6),
                      Expanded(
                        child: Container(
                 
                 
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('P 10000' ,style: bodytext_h1.copyWith(color: primary),)
                            ],
                          ),
                        ),
                      )
                    ],
                   ),

                   Positioned(
                    top: -5,
                    right: -5,
                    child: CircleButton(icon: Icons.close, function: (){},  iconcolor: black_25,),  )
                   ]
                 ),
              ),
              Container(
               // height: MediaQuery.of(context).size.height * 0.30,
               constraints: BoxConstraints(minHeight: 100, ),

              child: SingleChildScrollView(
                padding: EdgeInsets.symmetric(vertical: 6, horizontal: 24,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                                              Text('Add On', style: bodytext_h2.copyWith(color: black_75),),
                                              VerticalSpace(value: 6),
                                              Wrap(
                                              crossAxisAlignment: WrapCrossAlignment.center,
                                              alignment: WrapAlignment.start,
                                                children: [
                                                ExtraContent(),
                                              

                                                ],
                                              )
                        ],
                      ),
                    ),

                  ],
                ),
              ),
              ),
              Container(
          padding: EdgeInsets.symmetric(vertical: 6, horizontal: 24,),
                child: StartingButton(label: 'Add to Cart', textcolor: purewhite,),
              ),
            ],
          ),
        ));
  }
}
