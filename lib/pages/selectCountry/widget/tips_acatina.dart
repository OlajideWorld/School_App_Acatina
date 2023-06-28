import 'package:acatina_app/pages/selectCountry/widget/decision_page.dart';
import 'package:acatina_app/utils/colors.dart';
import 'package:acatina_app/utils/size.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TipsPage extends StatefulWidget {
  const TipsPage({super.key});

  @override
  State<TipsPage> createState() => _TipsPageState();
}

class _TipsPageState extends State<TipsPage> {
  @override
  void initState() {
    super.initState();
    changeColor();
  }

  changeColor() async {
    await Future.delayed(const Duration(seconds: 3), () {});
    Get.to(() => DecisionPage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whitecolor,
      body: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Padding(
          padding: EdgeInsets.only(top: heightSize(77)),
          child: Text("Tips",
              style: TextStyle(
                  fontSize: fontSize(20), fontWeight: FontWeight.w400)),
        ),
        SizedBox(height: heightSize(40)),
        Center(
          child: SizedBox(
            height: heightSize(278),
            child: Image.asset(
              "assets/imageCountry.png",
              fit: BoxFit.contain,
            ),
          ),
        )
      ]),
    );
  }
}
