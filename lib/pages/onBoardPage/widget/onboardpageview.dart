import 'package:acatina_app/main.dart';
import 'package:acatina_app/utils/colors.dart';
import 'package:acatina_app/utils/size.dart';
import "package:flutter/material.dart";

class OnboardWidget extends StatelessWidget {
  final String image;
  final String icon;
  final String title;
  final String subcategory;
  const OnboardWidget(
      {super.key,
      required this.image,
      required this.icon,
      required this.title,
      required this.subcategory});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: heightSize(298),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              image:
                  DecorationImage(image: AssetImage(image), fit: BoxFit.fill)),
        ),
        Positioned(
          top: heightSize(272),
          bottom: heightSize(0),
          right: widthSize(0),
          left: widthSize(0),
          child: Container(
            height: MediaQuery.of(context).size.height,
            padding: EdgeInsets.only(top: heightSize(36)),
            decoration: BoxDecoration(
                color: whitecolor,
                borderRadius:
                    BorderRadius.vertical(top: Radius.circular(widthSize(15)))),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: widthSize(36)),
                  child: SizedBox(
                    height: heightSize(40),
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(icon),
                          SizedBox(
                            width: widthSize(12),
                          ),
                          Center(
                            child: Text(
                              title,
                              style: TextStyle(
                                  fontSize: fontSize(22),
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ]),
                  ),
                ),
                SizedBox(height: heightSize(21)),
                Padding(
                  padding: EdgeInsets.only(
                      left: widthSize(40), right: widthSize(40)),
                  child: Text(
                    subcategory,
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                        letterSpacing: widthSize(-0.408),
                        fontSize: fontSize(15),
                        fontWeight: FontWeight.w400),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
