import 'package:acatina_app/pages/Users%20Page/Sign-up%20Pages/bindings/binding.dart';
import 'package:acatina_app/pages/Users%20Page/Sign-up%20Pages/view/form_page_parents.dart';
import 'package:acatina_app/pages/Users%20Page/Sign-up%20Pages/view/form_page_schoolowners.dart';
import 'package:acatina_app/pages/Users%20Page/Sign-up%20Pages/widget/images_text.dart';
import 'package:acatina_app/utils/colors.dart';
import 'package:acatina_app/utils/size.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserSignUpPage extends StatelessWidget {
  const UserSignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whitecolor,
      body: Column(children: [
        Container(
          height: heightSize(167),
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(color: maincolor),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
              padding:
                  EdgeInsets.only(left: widthSize(40), top: heightSize(58)),
              child: SizedBox(
                height: heightSize(25),
                child: Row(children: [
                  GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: Icon(
                      Icons.arrow_back,
                      color: whitecolor,
                      size: heightSize(23),
                    ),
                  ),
                  SizedBox(
                    width: widthSize(8),
                  ),
                  Center(
                    child: Text(
                      "Back",
                      style: TextStyle(
                          color: whitecolor,
                          fontSize: fontSize(17),
                          fontWeight: FontWeight.w500),
                    ),
                  )
                ]),
              ),
            ),
            SizedBox(height: heightSize(31)),
            Padding(
              padding:
                  EdgeInsets.only(left: widthSize(39), bottom: heightSize(29)),
              child: Text(
                "Signup",
                style: TextStyle(
                    color: whitecolor,
                    fontSize: fontSize(20),
                    fontWeight: FontWeight.w600),
              ),
            )
          ]),
        ),
        Container(
            decoration: const BoxDecoration(color: maincolor),
            child: Container(
              height: heightSize(700),
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(
                  top: heightSize(46),
                  left: widthSize(37),
                  right: widthSize(39)),
              decoration: BoxDecoration(
                color: whitecolor,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(widthSize(11)),
                ),
              ),
              child: Column(children: [
                ImagesAndText(
                  image: "assets/signup_user.png",
                  whichUser: "For Schools,Institutions and Colleges",
                  onTap: () {
                    Get.to(() => SchoolOwnersSignUp(),
                        binding: SignUpBindings());
                  },
                ),
                SizedBox(height: heightSize(34)),
                ImagesAndText(
                  image: "assets/signup_user2.png",
                  whichUser: "For Parents",
                  onTap: () {
                    Get.to(() => ParentsSignUp(), binding: SignUpBindings());
                  },
                ),
              ]),
            )),
      ]),
    );
  }
}
