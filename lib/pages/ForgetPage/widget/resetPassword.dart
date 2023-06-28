import 'package:acatina_app/common/buttons.dart';
import 'package:acatina_app/routes/routes.dart';
import 'package:acatina_app/utils/colors.dart';
import 'package:acatina_app/utils/size.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../common/input_textfield.dart';
import '../../selectCountry/widget/decision_page.dart';

class ResetPassword extends StatelessWidget {
  ResetPassword({super.key});

  final TextEditingController fullname = TextEditingController();
  final TextEditingController confirmname = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whitecolor,
      body: Padding(
        padding: EdgeInsets.only(
            top: heightSize(117), left: widthSize(39), right: widthSize(41)),
        child: SingleChildScrollView(
          child: Column(children: [
            SizedBox(
              height: heightSize(103),
              width: widthSize(103),
              child: Image.asset("assets/forgetpasswordreset.png"),
            ),
            SizedBox(height: heightSize(15)),
            Text(
              "RESET PASSWORD",
              style: TextStyle(
                  color: maincolor,
                  fontSize: fontSize(20),
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(height: heightSize(48)),
            SizedBox(
              height: heightSize(90),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Enter New Password',
                      style: TextStyle(
                          fontSize: fontSize(15), fontWeight: FontWeight.w400),
                    ),
                    Container(
                      height: heightSize(61),
                      width: widthSize(348),
                      decoration: BoxDecoration(
                          border: Border.all(color: maincolor),
                          borderRadius: BorderRadius.circular(widthSize(10))),
                      child: InputTextField(
                        obscureText: true,
                        maxlines: 1,
                        hintText: 'Enter New Password',
                        controller: fullname,
                        textInputAction: true,
                        password: true,
                      ),
                    ),
                  ]),
            ),
            SizedBox(height: heightSize(40)),
            SizedBox(
              height: heightSize(90),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Confirm New Password',
                      style: TextStyle(
                          fontSize: fontSize(15), fontWeight: FontWeight.w400),
                    ),
                    Container(
                      height: heightSize(61),
                      width: widthSize(348),
                      decoration: BoxDecoration(
                          border: Border.all(color: maincolor),
                          borderRadius: BorderRadius.circular(widthSize(10))),
                      child: InputTextField(
                        obscureText: true,
                        maxlines: 1,
                        hintText: 'Confirm New Password',
                        controller: confirmname,
                        textInputAction: true,
                        password: true,
                      ),
                    ),
                  ]),
            ),
            SizedBox(height: heightSize(70)),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: widthSize(95)),
              child: AppButtons(
                  textColor: Colors.black,
                  fontSize: fontSize(20),
                  backgroundColor: maincolor2,
                  text: 'Reset Password ',
                  borderColor: maincolor2,
                  height: heightSize(56),
                  onTap: () {
                    Get.off(()=>  DecisionPage());
                  }),
            )
          ]),
        ),
      ),
    );
  }
}
