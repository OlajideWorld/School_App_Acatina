import 'dart:ffi';

import 'package:get/get.dart';

import '../../../routes/routes.dart';

class AuthController extends GetxController {
  RxBool changeColor = false.obs;
  RxBool isloggin = false.obs;
  static AuthController instance = Get.find();
  @override
  void onInit() async {
    super.onInit();
    if (isloggin.value == false) {
      await Future.delayed(const Duration(seconds: 5), () {});
      Get.offNamed(Routes.onBoardScreen);
    } else {
      await Future.delayed(const Duration(seconds: 5), () {});
      Get.offNamed(Routes.decisionpage);
    }
  }
}
