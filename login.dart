import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:mnv/login/login_controller.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({
    super.key,
  });

  @override
  State<LoginPage> createState() =>
      _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // Username controller
  final TextEditingController usernameController =
  TextEditingController();

  // Password controller
  final TextEditingController passwordController =
  TextEditingController();

  // GetX controller
  late final LoginController controller;

  @override
  void initState() {
    super.initState();

    controller = Get.put(
      LoginController(),
    );
  }

  @override
  void dispose() {
    usernameController.dispose();
    passwordController.dispose();

    Get.delete<LoginController>();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Login',
        ),
      ),

      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(24),

            child: ConstrainedBox(
              constraints:
              const BoxConstraints(
                maxWidth: 400,
              ),

              child: Column(
                mainAxisAlignment:
                MainAxisAlignment.center,

                children: [

                  // =========================
                  // USERNAME
                  // =========================

                  TextField(
                    controller:
                    usernameController,

                    keyboardType:
                    TextInputType.emailAddress,

                    textInputAction:
                    TextInputAction.next,

                    decoration:
                    InputDecoration(
                      prefixIcon:
                      const Icon(
                        Icons.person,
                      ),

                      labelText:
                      'Username / Email',

                      border:
                      OutlineInputBorder(
                        borderRadius:
                        BorderRadius.circular(
                          20,
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(
                    height: 16,
                  ),

                  // =========================
                  // PASSWORD
                  // =========================

                  TextField(
                    controller:
                    passwordController,

                    obscureText: true,

                    textInputAction:
                    TextInputAction.done,

                    decoration:
                    InputDecoration(
                      prefixIcon:
                      const Icon(
                        Icons.lock,
                      ),

                      labelText:
                      'Password',

                      border:
                      OutlineInputBorder(
                        borderRadius:
                        BorderRadius.circular(
                          20,
                        ),
                      ),
                    ),

                    onSubmitted: (_) {
                      controller.loginCount(
                        usernameController.text,
                        passwordController.text,
                      );
                    },
                  ),

                  const SizedBox(
                    height: 24,
                  ),

                  // =========================
                  // LOGIN BUTTON
                  // =========================

                  Obx(
                        () {
                      if (controller
                          .isLoading.value) {
                        return const SizedBox(
                          height: 50,

                          child: Center(
                            child:
                            CircularProgressIndicator(),
                          ),
                        );
                      }

                      return SizedBox(
                        width:
                        double.infinity,

                        height: 50,

                        child:
                        ElevatedButton(
                          onPressed: () {
                            controller
                                .loginCount(
                              usernameController
                                  .text,
                              passwordController
                                  .text,
                            );
                          },

                          child: const Text(
                            'Login',
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}