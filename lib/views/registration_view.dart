import 'package:flutter/material.dart';
import 'package:flutter_forms/controller/registration_controller.dart';
import 'package:get/get.dart';

class RegestrationView extends StatelessWidget {
  const RegestrationView({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> gender = ['Male', 'Female'];
    //String? selectedGender = gender[0];
    return Scaffold(
        appBar: AppBar(
          title: const Text('Regestration'),
          backgroundColor: Colors.blueAccent,
          foregroundColor: Colors.white,
        ),
        body: GetBuilder<RegistrationControler>(builder: (controller) {
          return SingleChildScrollView(
            child: Form(
              key: controller.formKey,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextFormField(
                      validator: (value) {
                        return controller.nameValidator(value!);
                      },
                      onChanged: (value) {
                        controller.updateFirstName(value);
                      },
                      decoration: const InputDecoration(
                          labelText: 'First Name',
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)))),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                        onChanged: (value) {
                          controller.updateLastName(value);
                        },
                        decoration: const InputDecoration(
                            labelText: 'Last Name',
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))))),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Gender",
                      style: TextStyle(fontSize: 20),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          child: ListTile(
                            horizontalTitleGap: 0,
                            leading: Radio(
                                value: gender[0],
                                groupValue: controller.userData.value.gender,
                                onChanged: (value) {
                                  controller.updateGender(value.toString());
                                }),
                            title: const Text(
                              'Male',
                              style: TextStyle(fontSize: 14),
                            ),
                          ),
                        ),
                        Expanded(
                          child: ListTile(
                            horizontalTitleGap: 0,
                            leading: Radio(
                                value: gender[1],
                                groupValue: controller.userData.value.gender,
                                onChanged: (value) {
                                  controller.updateGender(value.toString());
                                }),
                            title: const Text(
                              'Female',
                              style: TextStyle(fontSize: 14),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      validator: (value) {
                        return controller.emailValidator(value!);
                      },
                      onChanged: (value) {
                        controller.updateEmail(value);
                      },
                      decoration: const InputDecoration(
                          labelText: 'Email',
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)))),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      onChanged: (value) {
                        controller.updatePassword(value);
                      },
                      obscureText: true,
                      decoration: const InputDecoration(
                          labelText: 'Passowrd',
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)))),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Colors.blueAccent,
                        ),
                        child: TextButton(
                            onPressed: () {
                              controller.register();
                            },
                            child: const Text(
                              "Regster",
                              style: TextStyle(color: Colors.white),
                            )))
                  ],
                ),
              ),
            ),
          );
        }));
  }
}
