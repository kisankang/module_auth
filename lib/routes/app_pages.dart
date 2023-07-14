import 'package:get/route_manager.dart';
import 'package:module_auth/modules/authentication/email_link_sign_in_page.dart';
import 'package:module_auth/modules/authentication/email_verification_page.dart';
import 'package:module_auth/modules/authentication/forgot_password_page.dart';
import 'package:module_auth/modules/authentication/phone_input_page.dart';
import 'package:module_auth/modules/authentication/profile_page.dart';
import 'package:module_auth/modules/authentication/sign_in_page.dart';
import 'package:module_auth/modules/authentication/sms_code_input_page.dart';
import 'package:module_auth/modules/main/main_page.dart';
import 'package:module_auth/routes/app_routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.signIn,
      page: () => const SignInPage(),
    ),
    GetPage(
      name: Routes.verifyEmail,
      page: () => const EmailVerificationPage(),
    ),
    GetPage(
      name: Routes.phone,
      page: () => const PhoneInputPage(),
    ),
    GetPage(
      name: Routes.sms,
      page: () => const SMSCodeInputPage(),
    ),
    GetPage(
      name: Routes.forgotPassword,
      page: () => const ForgotPasswordPage(),
    ),
    GetPage(
      name: Routes.emailLinkSignIn,
      page: () => const EmailLinkSignInPage(),
    ),
    GetPage(
      name: Routes.profile,
      page: () => const ProfilePage(),
    ),
    GetPage(
      name: Routes.main,
      page: () => const MainPage(),
    ),
  ];
}
