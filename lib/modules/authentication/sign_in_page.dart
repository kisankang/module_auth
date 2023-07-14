import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:module_auth/utils/authenticaltion.dart';
import 'package:module_auth/routes/app_routes.dart';
import 'package:module_auth/utils/decorations.dart';

class SignInPage extends GetWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SignInScreen(
      actions: [
        ForgotPasswordAction((context, email) {
          Get.toNamed(Routes.forgotPassword, arguments: {'email': email});
        }),
        VerifyPhoneAction((context, _) {
          Get.toNamed(Routes.phone);
        }),
        AuthStateChangeAction<SignedIn>((context, state) {
          if (!state.user!.emailVerified) {
            Get.toNamed(Routes.verifyEmail);
          } else {
            Get.offNamed(Routes.main); // Get.offNamed(Routes.profile);
          }
        }),
        AuthStateChangeAction<UserCreated>((context, state) {
          if (!state.credential.user!.emailVerified) {
            Get.toNamed(Routes.verifyEmail);
          } else {
            Get.offNamed(Routes.main); // Get.offNamed(Routes.profile);
          }
        }),
        AuthStateChangeAction<CredentialLinked>((context, state) {
          if (!state.user.emailVerified) {
            Get.toNamed(Routes.verifyEmail);
          } else {
            Get.offNamed(Routes.main); // Get.offNamed(Routes.profile);
          }
        }),
        mfaAction,
        EmailLinkSignInAction((context) {
          Get.toNamed(Routes.emailLinkSignIn);
        }),
      ],
      styles: const {
        EmailFormStyle(signInButtonVariant: ButtonVariant.filled),
      },
      headerBuilder: headerImage('assets/images/flutterfire_logo.png'),
      sideBuilder: sideImage('assets/images/flutterfire_logo.png'),
      subtitleBuilder: (context, action) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: Text(
            action == AuthAction.signIn
                ? 'Welcome to Firebase UI! Please sign in to continue.'
                : 'Welcome to Firebase UI! Please create an account to continue',
          ),
        );
      },
      footerBuilder: (context, action) {
        return Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 16),
            child: Text(
              action == AuthAction.signIn
                  ? 'By signing in, you agree to our terms and conditions.'
                  : 'By registering, you agree to our terms and conditions.',
              style: const TextStyle(color: Colors.grey),
            ),
          ),
        );
      },
    );
  }
}
