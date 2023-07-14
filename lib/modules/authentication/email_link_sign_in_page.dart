import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:module_auth/utils/authenticaltion.dart';
import 'package:module_auth/routes/app_routes.dart';
import 'package:module_auth/utils/decorations.dart';

class EmailLinkSignInPage extends GetWidget {
  const EmailLinkSignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return EmailLinkSignInScreen(
      actions: [
        AuthStateChangeAction<SignedIn>((context, state) {
          Get.offNamed(Routes.signIn);
        }),
      ],
      provider: emailLinkProviderConfig,
      headerMaxExtent: 200,
      headerBuilder: headerIcon(Icons.link),
      sideBuilder: sideIcon(Icons.link),
    );
  }
}
