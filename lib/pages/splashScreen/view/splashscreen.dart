import 'package:acatina_app/utils/colors.dart';
import 'package:acatina_app/utils/size.dart';
import 'package:flutter/material.dart';

import '../../AuthPage/controller/authcontroller.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final controller = AuthController.instance;

  @override
  void initState() {
    super.initState();
    changeColor();
  }

  changeColor() async {
    await Future.delayed(const Duration(seconds: 2), () {});
    setState(() {
      controller.changeColor.value = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          controller.changeColor.value == false ? whitecolor : maincolor,
      body: Center(
        child: SizedBox(
          height: heightSize(127.32),
          child: controller.changeColor.value == false
              ? Image.asset("assets/logo1.png")
              : Image.asset("assets/logo2.png"),
        ),
      ),
    );
  }
}
