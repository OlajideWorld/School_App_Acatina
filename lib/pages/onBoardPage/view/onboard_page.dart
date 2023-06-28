import 'package:acatina_app/common/buttons.dart';
import 'package:acatina_app/pages/onBoardPage/widget/onboardpageview.dart';
import 'package:acatina_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../utils/size.dart';

class OnBoardPage extends StatelessWidget {
  OnBoardPage({super.key});

  final pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        SizedBox(
          height: heightSize(700),
          width: MediaQuery.of(context).size.width,
          child: PageView(
            physics: const BouncingScrollPhysics(),
            controller: pageController,
            children: const [
              OnboardWidget(
                image: "assets/onboard1.png",
                icon: "assets/onboardicon1.png",
                title: "School Dues Payment",
                subcategory:
                    "Paying school fees has never been easier.With Acatina you can pay school fees and bills at the comfort of your home,office,wherever you are and also get a digital receipt",
              ),
              OnboardWidget(
                  image: "assets/onboard2.png",
                  icon: "assets/onboardicon2.png",
                  title: "Notifications from schools",
                  subcategory:
                      "No more stress of going to school meetings,you can get every important information from the school with this application"),
              OnboardWidget(
                  image: "assets/onboard3.png",
                  icon: "assets/onboardicon3.png",
                  title: "Checking results",
                  subcategory:
                      "You don’t need to get to the school before obtaining your child’s result,you can check it using Acatina"),
              OnboardWidget(
                  image: "assets/onboard4.png",
                  icon: "assets/onboardicon4.png",
                  title: "Keep track of child progress",
                  subcategory:
                      "Get attendance,academic status of your child/children and others from teachers or school authority.Be assured of child’s safety from the school")
            ],
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: SmoothPageIndicator(
            controller: pageController,
            count: 4,
            effect: JumpingDotEffect(
                verticalOffset: heightSize(8),
                activeDotColor: maincolor2,
                dotColor: pageindicator,
                dotWidth: widthSize(9),
                dotHeight: heightSize(9)),
          ),
        ),
        SizedBox(height: heightSize(47)),
        Align(
          alignment: FractionalOffset.bottomCenter,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: widthSize(40)),
            child: AppButtons(
              text: "Next",
              textColor: whitecolor,
              backgroundColor: maincolor,
              height: heightSize(68),
              borderColor: maincolor,
              onTap: () {
                // if (pageController.page == 4) {
                //   Get.toNamed("/selectCountry");
                // } else {
                //   pageController.nextPage(
                //       duration: const Duration(milliseconds: 200),
                //       curve: Curves.easeIn);
                // }
                Get.toNamed("/selectCountry");
              },
              fontSize: fontSize(16),
              fontWeight: FontWeight.w600,
            ),
          ),
        )
      ]),
    );
  }
}
