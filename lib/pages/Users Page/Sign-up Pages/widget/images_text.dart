import 'package:acatina_app/utils/colors.dart';
import 'package:acatina_app/utils/size.dart';
import 'package:flutter/material.dart';

class ImagesAndText extends StatelessWidget {
  final String image;
  final String whichUser;
  final VoidCallback onTap;
  const ImagesAndText(
      {super.key,
      required this.image,
      required this.whichUser,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        height: heightSize(291),
        width: widthSize(350),
        child: Column(children: [
          SizedBox(
            height: heightSize(220),
            width: widthSize(350),
            child: Image.asset(
              image,
              fit: BoxFit.fill,
            ),
          ),
          Container(
            height: heightSize(70),
            width: widthSize(350),
            decoration: BoxDecoration(
              color: maincolor2,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(widthSize(10)),
                bottomRight: Radius.circular(widthSize(10)),
              ),
            ),
            padding: EdgeInsets.only(left: widthSize(8), top: heightSize(22)),
            child: Text(
              whichUser,
              style: TextStyle(
                  color: whitecolor,
                  fontSize: fontSize(18),
                  fontWeight: FontWeight.w600),
            ),
          )
        ]),
      ),
    );
  }
}
