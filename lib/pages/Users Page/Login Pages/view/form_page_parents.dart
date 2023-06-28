import 'package:acatina_app/pages/Users%20Page/Login%20Pages/widget/formpageparents.dart';
import 'package:acatina_app/utils/size.dart';
import 'package:flutter/gestures.dart';
import "package:flutter/material.dart";
import 'package:get/get.dart';

import '../../../../utils/colors.dart';

class ParentsLogin extends StatelessWidget {
  const ParentsLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: whitecolor,
      body: Padding(
        padding: EdgeInsets.only(
            left: widthSize(40), top: heightSize(53), right: widthSize(40)),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          GestureDetector(
            onTap: (() => Get.back()),
            child: SizedBox(
              height: heightSize(25),
              child: Row(children: [
                Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                  size: heightSize(23),
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
          ),
          SizedBox(height: heightSize(28)),
          SingleChildScrollView(
            child: Align(
              alignment: Alignment.center,
              child: Text(
                "For Parents",
                style: TextStyle(
                    fontSize: fontSize(19), fontWeight: FontWeight.w500),
              ),
            ),
          ),
          SizedBox(height: heightSize(15)),
          SizedBox(
              height: heightSize(600),
              width: MediaQuery.of(context).size.width,
              child: FormPageParents()),
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
                        "Don’t have an account?",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: fontSize(14)),
                      ),
                      RichText(
                        text: TextSpan(
                          text: "Sign up",
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
