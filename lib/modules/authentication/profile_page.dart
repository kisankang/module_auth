import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:module_auth/utils/authenticaltion.dart';
import 'package:module_auth/routes/app_routes.dart';

class ProfilePage extends GetWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    // final platform = Theme.of(context).platform;
    return ProfileScreen(
      appBar: AppBar(
        title: const Text('Profile Page'),
      ),
      actions: [
        SignedOutAction((context) {
          Get.offAllNamed(Routes.signIn);
        }),
        // _mfaAction,
      ],
      actionCodeSettings: actionCodeSettings,
      children: [
        Container(
          height: Get.size.height * 0.2,
          color: Colors.grey[200],
          alignment: Alignment.center,
          child: const Text('Position of children'),
        )
      ],
      // showMFATile: kIsWeb ||
      //     platform == TargetPlatform.iOS ||
      //     platform == TargetPlatform.android,
    );
  }
}
