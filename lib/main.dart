import 'package:acatina_app/pages/AuthPage/bindings/authbindings.dart';
import 'package:acatina_app/pages/DashBoard/DashBoard_School/views/dashboard_school.dart';
import 'package:acatina_app/routes/routes.dart';
import 'package:acatina_app/utils/size-config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        SizeConfig().init(constraints);
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.brown,
          ),
          initialBinding: AuthBindings(),
          initialRoute: Pages.splashScreen,
          home: const DashBoardSchool(),
          getPages: Pages.routes,
        );
      },
    );
  }
}
