import 'package:flutter_forms/bindings/registration_bindings.dart';
import 'package:flutter_forms/views/registration_view.dart';
import 'package:get/get.dart';

class Routes{
  static final routes = [
    GetPage(name: '/regestration',binding: RegistrationBindings(), page: ()=> RegestrationView())
  ];
}