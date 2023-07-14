import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:module_auth/routes/app_routes.dart';
import 'package:module_auth/utils/decorations.dart';

class PhoneInputPage extends GetWidget {
  const PhoneInputPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PhoneInputScreen(
      actions: [
        SMSCodeRequestedAction((context, action, flowKey, phone) {
          Get.offNamed(Routes.sms, arguments: {
            'action': action,
            'flowKey': flowKey,
            'phone': phone,
          });
        }),
      ],
      headerBuilder: headerIcon(Icons.phone),
      sideBuilder: sideIcon(Icons.phone),
    );
  }
}
