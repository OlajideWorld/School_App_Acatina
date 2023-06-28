import 'package:acatina_app/pages/Users%20Page/Sign-up%20Pages/widget/verifyEmail.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/buttons.dart';
import '../../../../common/input_textfield.dart';
import '../../../../utils/colors.dart';
import '../../../../utils/size.dart';

class PageViewForms2 extends StatelessWidget {
  PageViewForms2({super.key});

  final TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          SizedBox(
            height: heightSize(90),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Password',
                    style: TextStyle(
                        fontSize: fontSize(15), fontWeight: FontWeight.w400),
                  ),
                  Container(
                    height: heightSize(61),
                    decoration: BoxDecoration(
                        border: Border.all(color: maincolor),
                        borderRadius: BorderRadius.circular(widthSize(10))),
                    child: InputTextField(
                      obscureText: true,
                      maxlines: 1,
                      hintText: 'Password',
                      controller: password,
                      textInputAction: true,
                      password: true,
                    ),
                  ),
                ]),
          ),
          SizedBox(height: heightSize(15)),
          //
          // 2nd textfield
          SizedBox(
            height: heightSize(90),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Confirm Password',
                    style: TextStyle(
                        fontSize: fontSize(15), fontWeight: FontWeight.w400),
                  ),
                  Container(
                    height: heightSize(61),
                    decoration: BoxDecoration(
                        border: Border.all(color: maincolor),
                        borderRadius: BorderRadius.circular(widthSize(10))),
                    child: InputTextField(
                      obscureText: true,
                      maxlines: 1,
                      hintText: 'Confirm Password',
                      controller: password,
                      textInputAction: true,
                      password: true,
                    ),
                  ),
                ]),
          ),
          SizedBox(height: heightSize(15)),
          SizedBox(
            height: heightSize(46),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "By signing up you agree to our",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.w400, fontSize: fontSize(14)),
                ),
                RichText(
                  text: TextSpan(
                    text: "Login",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: fontSize(14),
                        color: maincolor2),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () => debugPrint('You touched Login link'),
                  ),
                ),
                Text(
                  "and",
                  style: TextStyle(
                      fontWeight: FontWeight.w400, fontSize: fontSize(14)),
                ),
                RichText(
                  text: TextSpan(
                    text: "Privacy policy",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: fontSize(14),
                        color: maincolor2),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () => debugPrint('You touched Login link'),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: heightSize(30)),
          AppButtons(
            text: "Sign Up",
            textColor: Colors.black,
            backgroundColor: maincolor2,
            borderColor: maincolor2,
            fontSize: fontSize(17),
            height: heightSize(62),
            fontWeight: FontWeight.w500,
            onTap: () {
              Get.to(() => VerifyEmail());
            },
          ),
        ],
      ),
    );
  }
}
