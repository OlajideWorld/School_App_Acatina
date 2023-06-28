import 'package:acatina_app/pages/AuthPage/bindings/authbindings.dart';
import 'package:acatina_app/pages/DashBoard/DashBoard_Parents/views/dashboard_parents.dart';
import 'package:acatina_app/pages/DashBoard/DashBoard_School/views/dashboard_school.dart';
import 'package:acatina_app/pages/onBoardPage/view/onboard_page.dart';
import 'package:acatina_app/pages/selectCountry/widget/decision_page.dart';
import 'package:acatina_app/pages/selectCountry/widget/welcome_acatina.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

import '../pages/Users Page/Login Pages/view/login_page.dart';
import '../pages/Users Page/Sign-up Pages/view/sign_up_page.dart';
import '../pages/selectCountry/view/selectcountry.dart';
import '../pages/splashScreen/view/splashscreen.dart';

class Routes {
  static const splashScreen = "/splashscreen";
  static const dashboardschool = '/dashboardschool';
  static const dashboardparents = "/dashboardparents";
  static const onBoardScreen = '/onboard';
  static const userLoginPage = '/userloginpage';
  static const userSignupPage = "/usersignpage";
  static const adminloginPage = "/loginpage";
  static const forgetPage = "/forgetpage";
  static const profilePage = "/profiepage";
  static const settingsPage = "/settingspage";
  static const forgotPassword = "/forgotpassword";
  static const selectCountry = "/selectCountry";
  static const welcome_acatina = "/welcomeacatina";
  static const decisionpage = '/decisionpage';
}

class Pages {
  static const splashScreen = Routes.splashScreen;
  static final routes = [
    GetPage(
        name: Routes.splashScreen,
        page: () => const SplashScreen(),
        binding: AuthBindings()),
    GetPage(
      name: Routes.dashboardschool,
      page: () => const DashBoardSchool(),
    ),
    GetPage(
      name: Routes.dashboardparents,
      page: () => const DashBaordParents(),
    ),
    GetPage(name: Routes.onBoardScreen, page: () => OnBoardPage()),
    GetPage(name: Routes.selectCountry, page: () => const SelectCountry()),
    GetPage(name: Routes.welcome_acatina, page: () => const WelcomeAcatina()),
    GetPage(name: Routes.userLoginPage, page: () => const LoginUserPage()),
    GetPage(name: Routes.userSignupPage, page: () => const UserSignUpPage()),
    GetPage(name: Routes.decisionpage, page: () => DecisionPage())
  ];
}
