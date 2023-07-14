import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:module_auth/routes/app_routes.dart';
import 'package:module_auth/utils/decorations.dart';

class SMSCodeInputPage extends GetWidget {
  const SMSCodeInputPage({super.key});

  @override
  Widget build(BuildContext context) {
    final arguments = Get.arguments as Map<String, dynamic>?;
    return SMSCodeInputScreen(
      actions: [
        AuthStateChangeAction<SignedIn>((context, state) {
          Get.offNamed(Routes.main); // Get.offNamed(Routes.profile);
        })
      ],
      flowKey: arguments?['flowKey'],
      action: arguments?['action'],
      headerBuilder: headerIcon(Icons.sms_outlined),
      sideBuilder: sideIcon(Icons.sms_outlined),
    );
  }
}
