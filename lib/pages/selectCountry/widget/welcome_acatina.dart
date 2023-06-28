import 'package:acatina_app/pages/selectCountry/widget/tips_acatina.dart';
import 'package:acatina_app/utils/colors.dart';
import 'package:acatina_app/utils/size.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WelcomeAcatina extends StatefulWidget {
  const WelcomeAcatina({super.key});

  @override
  State<WelcomeAcatina> createState() => _WelcomeAcatinaState();
}

class _WelcomeAcatinaState extends State<WelcomeAcatina> {
  @override
  void initState() {
    super.initState();
    changeColor();
  }

  changeColor() async {
    await Future.delayed(const Duration(seconds: 3), () {});
    Get.to(() => const TipsPage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whitecolor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: heightSize(256)),
          Center(
            child: SizedBox(
                height: heightSize(146),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Welcome To Acatina",
                      style: TextStyle(
                          fontSize: fontSize(20), fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: heightSize(76),
                      child: Image.asset("assets/logo1.png"),
                    )
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
