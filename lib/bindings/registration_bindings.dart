import 'package:flutter_forms/controller/registration_controller.dart';
import 'package:get/get.dart';

class RegistrationBindings extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => RegistrationControler());
  }
}