import 'package:flutter/material.dart';

class AppButtons extends StatelessWidget {
  final Color textColor;
  final Color backgroundColor;
  final Color borderColor;
  final String text;
  final double height;
  final double fontSize;
  final FontWeight? fontWeight;
  final Function()? onTap;

  const AppButtons(
      {Key? key,
      required this.textColor,
      this.fontWeight,
      required this.fontSize,
      required this.backgroundColor,
      required this.text,
      required this.borderColor,
      required this.height,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: double.maxFinite,
        height: height,
        decoration: BoxDecoration(
          color: backgroundColor,
          border: Border.all(color: borderColor),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                fontSize: fontSize,
                color: textColor,
                fontWeight: fontWeight ?? FontWeight.w600),
          ),
        ),
      ),
    );
  }
}
