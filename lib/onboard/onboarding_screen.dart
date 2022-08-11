import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onecall/auth/home_screen.dart';

import 'package:onecall/constant/ui.dart';
import 'package:onecall/helperwidgets/horizontal_space.dart';
import 'package:onecall/onboard/boarding_content.dart';
import 'package:onecall/sample/sampledata.dart';
import 'package:onecall/widgets/primary_rounded_button.dart';
import 'package:onecall/widgets/secondary_rounded_button.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  late PageController controller;
  bool isLastPage = false;
  int _pageindex = 0;

  @override
  void initState() {
    controller = PageController(initialPage: _pageindex);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  void prev() {
    if (_pageindex != 0) {
      controller.previousPage(
          duration: Duration(milliseconds: 200), curve: Curves.easeInOut);
    }
  }

  void next() {
    if (_pageindex != onboardingPage.length - 1) {
      controller.nextPage(
          duration: Duration(milliseconds: 200), curve: Curves.easeInOut);
    }
  }

  void toHomePage() async {
    final pref =  await SharedPreferences.getInstance();
    pref.setBool("is_onboarding_finish", true);
    Get.off(() => const HomeScreen());
  }

  void setPage(int index) {
    setState(() {
      _pageindex = index;
      if (_pageindex == onboardingPage.length - 1) {
        isLastPage = true;
      } else {
        isLastPage = false;
      }
    });
  }

  void skip() {
      controller.jumpToPage(onboardingPage.length -1);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          actions: [
            Padding(
                padding: EdgeInsets.only(right: 9),
                child: TextButton(
                    onPressed: () {
                        skip();
                    },
                    child: Text(
                      'Skip',
                      style: bodytext_h2.copyWith(
                          color: Colors.black.withOpacity(0.50), fontWeight: FontWeight.normal),
                    )))
          ],
        ),
        body: PageView(
            onPageChanged: (index) {
              setPage(index);
            },
            controller: controller,
            children: onboardingPage .map((board) => BoardingContent(
                      imagepath: board.image,
                      title: board.title,
                      subtitle: board.subtitle,
                      id: board.id,
                    ))
                .toList()
            //  [
            //  ...onboardingPage
            // ],
            ),
        bottomSheet: Container(
          padding: EdgeInsets.symmetric(
            vertical: 12,
            horizontal: 24,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              if (_pageindex != 0)
                SizedBox(
                  child: SecondaryRoundedButton(funtion: prev, label: 'Prev'),
                ),
                 if (_pageindex != 0)
                HorizontalSpace(value: 8),
              Expanded(
                child: SizedBox(
                  child: PrimaryRoundedButton(
                      funtion: isLastPage ? toHomePage : next,
                      label: isLastPage ? 'Get started' : 'Next'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}