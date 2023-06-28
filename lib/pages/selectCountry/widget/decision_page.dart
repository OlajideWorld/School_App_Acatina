import 'package:acatina_app/common/buttons.dart';
import 'package:acatina_app/pages/selectCountry/widget/carousel_slider.dart';
import 'package:acatina_app/routes/routes.dart';
import 'package:acatina_app/utils/colors.dart';
import 'package:acatina_app/utils/size.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DecisionPage extends StatelessWidget {
  DecisionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whitecolor,
      body: Column(children: [
        Padding(
          padding: EdgeInsets.only(top: heightSize(77)),
          child: Text(
            'Tips',
            style:
                TextStyle(fontSize: fontSize(20), fontWeight: FontWeight.w400),
          ),
        ),
        SizedBox(height: heightSize(49)),
        const CarouselImage(),
        SizedBox(height: heightSize(105)),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: widthSize(76)),
          child: SizedBox(
            height: heightSize(160),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppButtons(
                  height: heightSize(50),
                  fontWeight: FontWeight.w400,
                  fontSize: fontSize(20),
                  backgroundColor: maincolor2,
                  text: "Sign Up",
                  textColor: Colors.black,
                  borderColor: maincolor2,
                  onTap: () {
                    Get.toNamed(Routes.userSignupPage);
                  },
                ),
                AppButtons(
                  height: heightSize(50),
                  fontWeight: FontWeight.w400,
                  fontSize: fontSize(20),
                  backgroundColor: whitecolor,
                  text: "Log In",
                  textColor: maincolor2,
                  borderColor: maincolor2,
                  onTap: () {
                    Get.toNamed(Routes.userLoginPage);
                  },
                ),
              ],
            ),
          ),
        )
      ]),
    );
  }
}
