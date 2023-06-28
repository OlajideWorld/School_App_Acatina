import 'package:acatina_app/main.dart';
import 'package:acatina_app/utils/colors.dart';
import 'package:acatina_app/utils/size.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../common/buttons.dart';

class SelectCountry extends StatelessWidget {
  const SelectCountry({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whitecolor,
      body: Column(
        children: [
          Container(
            height: heightSize(220),
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(color: maincolor),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                padding: EdgeInsets.only(left: widthSize(36),top: heightSize(69)),
                child: SizedBox(
                  height: heightSize(25),
                  child: Row(children: [
                    GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Icon(
                        Icons.arrow_back,
                        color: whitecolor,
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
                            color: whitecolor,
                            fontSize: fontSize(17),
                            fontWeight: FontWeight.w500),
                      ),
                    )
                  ]),
                ),
              ),
              SizedBox(height: heightSize(68)),
              Padding(
                padding: EdgeInsets.only(left: widthSize(38)),
                child: Text(
                  "Select your Country",
                  style: TextStyle(
                      color: whitecolor,
                      fontSize: fontSize(20),
                      fontWeight: FontWeight.w600),
                ),
              ),
            ]),
          ),
          Container(
            decoration: const BoxDecoration(color: maincolor),
            child: Container(
              height: heightSize(250),
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(
                  top: heightSize(45),
                  left: widthSize(40),
                  right: widthSize(40)),
              decoration: BoxDecoration(
                color: whitecolor,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(widthSize(11)),
                ),
              ),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Select Country",
                      style: TextStyle(
                          fontSize: fontSize(16), fontWeight: FontWeight.w500),
                    ),
                    SizedBox(height: heightSize(9)),
                    Container(
                      height: heightSize(64),
                      decoration: BoxDecoration(
                        border: Border.all(color: bordercolor),
                        borderRadius:
                            BorderRadius.all(Radius.circular(widthSize(4))),
                      ),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: widthSize(17)),
                              child: Text(
                                "Select your country",
                                style: TextStyle(
                                    fontSize: fontSize(13),
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: widthSize(16)),
                              child: const Icon(
                                Icons.arrow_drop_down,
                                color: Colors.black,
                              ),
                            )
                          ]),
                    )
                  ]),
            ),
          ),
          Expanded(
            child: Align(
              alignment: FractionalOffset.bottomCenter,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: widthSize(40), vertical: widthSize(20)),
                child: AppButtons(
                  text: "Continue",
                  textColor: whitecolor,
                  backgroundColor: maincolor,
                  height: heightSize(68),
                  borderColor: maincolor,
                  onTap: () {
                    Get.offNamed("/welcomeacatina");
                  },
                  fontSize: fontSize(16),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
