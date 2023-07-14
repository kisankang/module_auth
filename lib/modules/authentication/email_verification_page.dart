import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:module_auth/utils/authenticaltion.dart';
import 'package:module_auth/routes/app_routes.dart';
import 'package:module_auth/utils/decorations.dart';

class EmailVerificationPage extends GetWidget {
  const EmailVerificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return EmailVerificationScreen(
      headerBuilder: headerIcon(Icons.verified),
      sideBuilder: sideIcon(Icons.verified),
      actionCodeSettings: actionCodeSettings,
      actions: [
        EmailVerifiedAction(() {
          Get.offNamed(Routes.main); // Get.offNamed(Routes.profile);
        }),
        AuthCancelledAction((context) {
          FirebaseUIAuth.signOut(context: context);
          Get.offNamed(Routes.signIn);
        }),
      ],
    );
  }
}
