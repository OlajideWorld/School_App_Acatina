import 'package:acatina_app/pages/ForgetPage/widget/resetPassword.dart';
import 'package:acatina_app/utils/colors.dart';
import 'package:acatina_app/utils/size.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../common/buttons.dart';

class VerifyReset extends StatelessWidget {
  VerifyReset({super.key});

  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whitecolor,
      body: Padding(
        padding: EdgeInsets.only(
            top: heightSize(123), left: widthSize(41), right: widthSize(41)),
        child: Column(children: [
          SizedBox(
            height: heightSize(75),
            child: Image.asset("assets/forgetpasswordshield.png"),
          ),
          SizedBox(height: heightSize(43)),
          Text(
            'Verify Number',
            style: TextStyle(
                fontSize: fontSize(20),
                fontWeight: FontWeight.w600,
                color: maincolor),
          ),
          SizedBox(height: heightSize(31)),
          Text(
            'Enter code sent to your phone number',
            style: TextStyle(
                fontSize: fontSize(16),
                fontWeight: FontWeight.w500,
                color: maincolor),
          ),
          PinCodeTextField(
            appContext: context,
            length: 4,
            onChanged: (val) {},
            controller: controller,
            cursorColor: maincolor2,
            // textStyle:
            //     TextStyle(fontSize: fontSize(21), fontWeight: FontWeight.w600),
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            pinTheme: PinTheme(
                shape: PinCodeFieldShape.underline,
                fieldWidth: widthSize(47),
                activeColor: maincolor2,
                selectedColor: maincolor2,
                fieldOuterPadding:
                    EdgeInsets.only(left: widthSize(18), right: widthSize(18)),
                inactiveColor: maincolor),
          ),
          SizedBox(height: heightSize(20)),
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              "Resend(60s)",
              style: TextStyle(
                  color: maincolor2,
                  fontSize: fontSize(12),
                  fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(height: heightSize(49)),
          AppButtons(
            text: "Verify",
            textColor: Colors.black,
            backgroundColor: maincolor2,
            borderColor: maincolor2,
            fontSize: fontSize(17),
            height: heightSize(62),
            fontWeight: FontWeight.w500,
            onTap: () async {
              popUpMessage(context);
              await Future.delayed(const Duration(seconds: 3), () {});
              Get.to(() => ResetPassword());
            },
          ),
        ]),
      ),
    );
  }

  popUpMessage(BuildContext context) async {
    return showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return AlertDialog(
          title: SizedBox(
            height: heightSize(178),
            width: widthSize(239),
            child: Column(children: [
              SizedBox(
                height: heightSize(116),
                child: Image.asset(
                  "assets/forgetpasswordcall.png",
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(height: heightSize(27)),
              Text(
                "Phone Number Verified",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: fontSize(21), fontWeight: FontWeight.w500),
              ),
            ]),
          ),
        );
      },
    );
  }
}
