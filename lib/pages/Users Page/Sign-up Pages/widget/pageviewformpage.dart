import 'package:acatina_app/pages/Users%20Page/Sign-up%20Pages/controller/controller.dart';
import 'package:flutter/material.dart';

import '../../../../common/buttons.dart';
import '../../../../common/input_textfield.dart';
import '../../../../utils/colors.dart';
import '../../../../utils/size.dart';

class PageViewForms extends StatelessWidget {
  final bool schoolOwner;
  PageViewForms({super.key, required this.schoolOwner});

  final TextEditingController fullname = TextEditingController();
  final TextEditingController schoolname = TextEditingController();
  final TextEditingController numberofSchool = TextEditingController();
  final TextEditingController schoolemail = TextEditingController();
  final TextEditingController phoneNo = TextEditingController();
  final controller = SignUpController.instance.pageController;

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
                    'Your Full Name',
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
                      'Name of School',
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
                        hintText: 'Name of School',
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
                    schoolOwner == true
                        ? 'CAC/Reg Number of school'
                        : "Child’s Registration Number",
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
                      hintText: 'CAC/Reg Number of school',
                      controller: numberofSchool,
                      textInputAction: true,
                      password: false,
                    ),
                  ),
                ]),
          ),
          SizedBox(height: heightSize(15)),
          //
          // 4th textField
          SizedBox(
            height: heightSize(90),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    schoolOwner == true ? 'School Email' : "Phone Number",
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
                      hintText: 'School Email',
                      controller: schoolemail,
                      textInputAction: true,
                      password: false,
                    ),
                  ),
                ]),
          ),
          SizedBox(height: heightSize(15)),
          //
          // 5th textField
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
                  Container(
                    height: heightSize(61),
                    decoration: BoxDecoration(
                        border: Border.all(color: maincolor),
                        borderRadius: BorderRadius.circular(widthSize(10))),
                    child: InputTextField(
                      obscureText: false,
                      maxlines: 2,
                      hintText: 'Phone Number',
                      controller: phoneNo,
                      textInputAction: true,
                      password: false,
                    ),
                  ),
                ]),
          ),
          SizedBox(height: heightSize(45)),
          // button next
          AppButtons(
            text: "Next",
            textColor: Colors.black,
            backgroundColor: maincolor2,
            borderColor: maincolor2,
            fontSize: fontSize(17),
            height: heightSize(62),
            fontWeight: FontWeight.w500,
            onTap: () {
              controller.nextPage(
                  duration: const Duration(microseconds: 100),
                  curve: Curves.easeIn);
            },
          ),
        ],
      ),
    );
  }
}
