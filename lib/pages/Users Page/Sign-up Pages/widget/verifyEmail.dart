import 'package:acatina_app/common/buttons.dart';
import 'package:acatina_app/main.dart';
import 'package:acatina_app/utils/colors.dart';
import 'package:acatina_app/utils/size.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class VerifyEmail extends StatelessWidget {
  VerifyEmail({super.key});

  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whitecolor,
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: EdgeInsets.only(
            top: heightSize(138), left: widthSize(40), right: widthSize(40)),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          SizedBox(
            height: heightSize(103),
            child: Image.asset(
              "assets/verifyEmail.png",
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(height: heightSize(60)),
          Text(
            'Confirm email',
            style:
                TextStyle(fontSize: fontSize(24), fontWeight: FontWeight.w600),
          ),
          SizedBox(height: heightSize(12)),
          Text(
            'Enter code sent to the school email',
            style:
                TextStyle(fontSize: fontSize(18), fontWeight: FontWeight.w500),
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
          SizedBox(height: heightSize(54)),
          AppButtons(
              textColor: Colors.black,
              fontSize: fontSize(17),
              backgroundColor: maincolor2,
              text: "Verify Email",
              borderColor: maincolor2,
              height: heightSize(62),
              onTap: () {
                popUpMessage(context);
              }),
          SizedBox(height: heightSize(23)),
          Text(
            "Change email",
            style: TextStyle(
                color: maincolor2,
                fontSize: fontSize(13),
                fontWeight: FontWeight.w500),
          )
        ]),
      ),
    );
  }

  popUpMessage(BuildContext context) async {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: SizedBox(
            height: heightSize(269),
            width: widthSize(308),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              SizedBox(
                height: heightSize(99),
                child: Image.asset("assets/goodtick.png"),
              ),
              SizedBox(height: heightSize(27)),
              Text(
                "Sign Up Successful",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: fontSize(18), fontWeight: FontWeight.w500),
              ),
              SizedBox(height: heightSize(19)),
              Text(
                'Get started by setting up the school profile',
                style: TextStyle(
                    fontSize: fontSize(13.9), fontWeight: FontWeight.w400),
              ),
              SizedBox(height: heightSize(19)),
              AppButtons(
                  textColor: Colors.black,
                  fontSize: fontSize(16),
                  backgroundColor: maincolor2,
                  text: "Get Started",
                  borderColor: maincolor2,
                  height: heightSize(48),
                  onTap: () {})
            ]),
          ),
        );
      },
    );
  }
}
