import 'package:acatina_app/main.dart';
import 'package:acatina_app/pages/Users%20Page/Sign-up%20Pages/controller/controller.dart';
import 'package:acatina_app/utils/colors.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/buttons.dart';
import '../../../../common/input_textfield.dart';
import '../../../../utils/size.dart';
import '../widget/pageviewformpage.dart';
import '../widget/pageviewformpage2.dart';

class SchoolOwnersSignUp extends StatelessWidget {
  SchoolOwnersSignUp({super.key});
  final controller = SignUpController.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: whitecolor,
      body: Padding(
        padding: EdgeInsets.only(
            left: widthSize(40), top: heightSize(53), right: widthSize(40)),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(
            height: heightSize(25),
            child: Row(children: [
              GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                  size: heightSize(23),
                ),
              ),
              SizedBox(
                width: widthSize(8),
              ),
              Center(
                child: Text(
                  "Back",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: fontSize(17),
                      fontWeight: FontWeight.w500),
                ),
              )
            ]),
          ),
          SizedBox(height: heightSize(28)),
          SingleChildScrollView(
            child: Align(
              alignment: Alignment.center,
              child: Text(
                "For Schools and Colleges",
                style: TextStyle(
                    fontSize: fontSize(19), fontWeight: FontWeight.w500),
              ),
            ),
          ),
          SizedBox(height: heightSize(15)),
          SizedBox(
            height: heightSize(700),
            width: MediaQuery.of(context).size.width,
            child: PageView(
              physics: const BouncingScrollPhysics(),
              controller: controller.pageController,
              children: [
                PageViewForms(
                  schoolOwner: true,
                ),
                PageViewForms2()
              ],
            ),
          ),
          Expanded(
            child: Align(
              alignment: FractionalOffset.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(bottom: heightSize(8)),
                child: SizedBox(
                  height: heightSize(21),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account?",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: fontSize(14)),
                      ),
                      RichText(
                        text: TextSpan(
                          text: "Login",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: fontSize(14),
                              color: Colors.black),
                          recognizer: TapGestureRecognizer()
                            ..onTap =
                                () => debugPrint('You touched Login link'),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
