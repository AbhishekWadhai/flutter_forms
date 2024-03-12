import 'package:flutter/material.dart';
import 'package:flutter_forms/model/user_data_model.dart';
import 'package:get/get.dart';

class RegistrationControler extends GetxController {
  final formKey = GlobalKey<FormState>();
  final userData = UserData().obs;

  updateFirstName(String firstName) {
    userData.value.firstName = firstName;
    update();
  }

  updateLastName(String lastName) {
    userData.value.lastName = lastName;
    update();
  }

  updateGender(String gender) {
    userData.value.gender = gender;
    update();
  }

  updateEmail(String email) {
    userData.value.email = email; // Update email instead of lastName
    update();
  }

  updatePassword(String password) {
    userData.value.password = password; // Update password instead of lastName
    update();
  }

  String? nameValidator(String? name) {
    if (name == null || name.isEmpty || name.contains(' ')) {
      return 'Enter a valid first name';
    }
    return null;
  }

  String? genderValidator(String? gender) {
    if (gender == null || gender.isEmpty) {
      return 'Gender is required';
    }
    return null;
  }

  String? emailValidator(String? email) {
    if (email == null || email.isEmpty) {
      return 'Enter an email';
    }
    final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    if (!emailRegex.hasMatch(email)) {
      return 'Enter a valid email';
    }
    return null;
  }

  register() {
    final isValid = formKey.currentState!.validate();
    if (isValid) {
      print(userData.value.firstName);
      print(userData.value.lastName);
      // Perform registration logic here
    }
  }
}
