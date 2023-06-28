import 'package:acatina_app/pages/Users%20Page/Sign-up%20Pages/controller/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';

class SignUpBindings extends Bindings {
  @override
  void dependencies() {
    Get.put<SignUpController>(SignUpController());
  }
}
