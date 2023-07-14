import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:module_auth/utils/decorations.dart';

class ForgotPasswordPage extends GetWidget {
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    final arguments = Get.arguments as Map<String, dynamic>?;

    return ForgotPasswordScreen(
      email: arguments?['email'],
      headerMaxExtent: 200,
      headerBuilder: headerIcon(Icons.lock),
      sideBuilder: sideIcon(Icons.lock),
    );
  }
}
