import 'package:flutter/material.dart';

import '../../../../utils/colors.dart';
import '../../../../utils/size.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: heightSize(64),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: heightSize(64),
            width: widthSize(218),
            child: Row(children: [
              SizedBox(
                height: heightSize(64),
                child: Image.asset(
                  'assets/profileimageschool.png',
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(width: widthSize(5)),
              SizedBox(
                height: heightSize(64),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Welcome",
                        style: TextStyle(
                            color: maincolor2,
                            fontSize: fontSize(15),
                            fontWeight: FontWeight.w600),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Hali Khaled",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: fontSize(15),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                              height: heightSize(20),
                              child: Image.asset(
                                "assets/dashboardstar.png",
                                fit: BoxFit.fill,
                              ))
                        ],
                      ),
                      Text(
                        "English Teacher-Grade 6",
                        style: TextStyle(
                            fontSize: fontSize(12),
                            fontWeight: FontWeight.w400),
                      )
                    ]),
              ),
            ]),
          ),
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              height: heightSize(24),
              child: Row(children: const [
                Icon(
                  Icons.notifications,
                  color: maincolor2,
                ),
                Icon(
                  Icons.more_vert,
                  color: Colors.black,
                )
              ]),
            ),
          )
        ],
      ),
    );
  }
}
