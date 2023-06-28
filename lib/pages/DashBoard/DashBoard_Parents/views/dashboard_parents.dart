import 'package:acatina_app/utils/colors.dart';
import 'package:flutter/material.dart';

import '../../../../utils/size.dart';
import '../../DashBoard_School/widget/appbar.dart';

class DashBaordParents extends StatelessWidget {
  const DashBaordParents({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whitecolor,
      body: Padding(
        padding: EdgeInsets.only(top: heightSize(61), left: widthSize(21)),
        child: Column(children: [
          Padding(
              padding: EdgeInsets.only(right: widthSize(11.45)),
              child: const MyAppBar())
        ]),
      ),
    );
  }
}
