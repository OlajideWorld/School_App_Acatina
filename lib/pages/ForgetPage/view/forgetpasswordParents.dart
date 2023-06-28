import 'package:acatina_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../common/buttons.dart';
import '../../../utils/size.dart';
import '../widget/verifyEmail.dart';

class ForgetPasswordParents extends StatelessWidget {
  ForgetPasswordParents({super.key});

  final TextEditingController fullname = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whitecolor,
      body: Padding(
        padding: EdgeInsets.only(
            left: widthSize(40), top: heightSize(53), right: widthSize(40)),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          GestureDetector(
            onTap: (() => Get.back()),
            child: SizedBox(
              height: heightSize(25),
              child: Row(children: [
                Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                  size: heightSize(23),
                ),
                SizedBox(
                  width: widthSize(8),
                ),
                Center(
                  child: Text(
                    "Back",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: fontSize(17),
                        fontWeight: FontWeight.w500),
                  ),
                )
              ]),
            ),
          ),
          SizedBox(height: heightSize(50)),
          SizedBox(
              height: heightSize(75),
              child: Image.asset(
                "assets/forgetpasswordlock.png",
                fit: BoxFit.fill,
              )),
          SizedBox(height: heightSize(20)),
          Text("FORGOT PASSWORD",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: fontSize(20), fontWeight: FontWeight.w600)),
          SizedBox(height: heightSize(33)),
          Text(
            "Send Verification Code To:",
            style:
                TextStyle(fontSize: fontSize(17), fontWeight: FontWeight.w500),
          ),
          SizedBox(height: heightSize(47)),
          SizedBox(
            height: heightSize(90),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Phone Number',
                    style: TextStyle(
                        fontSize: fontSize(15), fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: heightSize(61),
                    child: Image.asset(
                      "assets/forgetpassimage.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                ]),
          ),
          SizedBox(height: heightSize(52)),
          AppButtons(
            text: "Continue",
            textColor: Colors.black,
            backgroundColor: maincolor2,
            borderColor: maincolor2,
            fontSize: fontSize(17),
            height: heightSize(62),
            fontWeight: FontWeight.w500,
            onTap: () {
              Get.to(() => VerifyReset());
            },
          ),
        ]),
      ),
    );
  }
}
