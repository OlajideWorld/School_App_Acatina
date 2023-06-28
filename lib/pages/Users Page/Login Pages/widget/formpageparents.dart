import 'package:acatina_app/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/buttons.dart';
import '../../../../common/input_textfield.dart';
import '../../../../utils/colors.dart';
import '../../../../utils/size.dart';
import '../../../ForgetPage/view/forgetpasswordParents.dart';

class FormPageParents extends StatelessWidget {
  FormPageParents({super.key});

  final TextEditingController fullname = TextEditingController();
  final TextEditingController schoolname = TextEditingController();
  final TextEditingController numberofSchool = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          SizedBox(
            height: heightSize(90),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'School Name',
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
                      obscureText: false,
                      maxlines: 2,
                      hintText: 'Your Full Name',
                      controller: fullname,
                      textInputAction: true,
                      password: false,
                    ),
                  ),
                ]),
          ),
          SizedBox(height: heightSize(15)),
          //
          // 2nd Formfield
          SizedBox(
              height: heightSize(90),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Childs Registration No',
                      style: TextStyle(
                          fontSize: fontSize(15), fontWeight: FontWeight.w400),
                    ),
                    Container(
                      height: heightSize(61),
                      decoration: BoxDecoration(
                          border: Border.all(color: maincolor),
                          borderRadius: BorderRadius.circular(widthSize(10))),
                      child: InputTextField(
                        obscureText: false,
                        maxlines: 2,
                        hintText: ' Your Full Name',
                        controller: schoolname,
                        textInputAction: true,
                        password: false,
                      ),
                    ),
                  ])),
          SizedBox(height: heightSize(15)),
          //
          // 3rd TextFiled
          SizedBox(
            height: heightSize(90),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Password",
                    style: TextStyle(
                        fontSize: fontSize(15), fontWeight: FontWeight.w400),
                  ),
                  Container(
                    height: heightSize(61),
                    decoration: BoxDecoration(
                        border: Border.all(color: maincolor),
                        borderRadius: BorderRadius.circular(widthSize(10))),
                    child: InputTextField(
                      obscureText: false,
                      maxlines: 2,
                      hintText: 'Password',
                      controller: numberofSchool,
                      textInputAction: true,
                      password: false,
                    ),
                  ),
                ]),
          ),
          SizedBox(height: heightSize(35)),

          // button next
          SizedBox(
            height: heightSize(98),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppButtons(
                  text: "Next",
                  textColor: Colors.black,
                  backgroundColor: maincolor2,
                  borderColor: maincolor2,
                  fontSize: fontSize(17),
                  height: heightSize(62),
                  fontWeight: FontWeight.w500,
                  onTap: () {
                    popUpMessage(context);
                  },
                ),
                InkWell(
                  onTap: (() => Get.to(
                        () => ForgetPasswordParents(),
                      )),
                  child: Text(
                    "Forgot password?",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: fontSize(14), fontWeight: FontWeight.w400),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  popUpMessage(BuildContext context) async {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: SizedBox(
            height: heightSize(217),
            width: widthSize(308),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              SizedBox(
                height: heightSize(80.56),
                child: Image.asset("assets/goodtick.png"),
              ),
              SizedBox(height: heightSize(31)),
              Text(
                "Log In Successful",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: fontSize(18), fontWeight: FontWeight.w500),
              ),
              SizedBox(height: heightSize(25)),
              AppButtons(
                  textColor: Colors.black,
                  fontSize: fontSize(16),
                  backgroundColor: maincolor2,
                  text: "Continue",
                  borderColor: maincolor2,
                  height: heightSize(48),
                  onTap: () {
                    Get.offAllNamed(Routes.dashboardparents);
                  })
            ]),
          ),
        );
      },
    );
  }
}
