import 'package:firebase_auth/firebase_auth.dart';

abstract class Routes {
  static String get initialRoute {
    final auth = FirebaseAuth.instance;
    if (auth.currentUser == null) {
      return '/';
    }
    if (!auth.currentUser!.emailVerified && auth.currentUser!.email != null) {
      return '/verify-email';
    }
    return '/main';
  }

  static const String signIn = '/';
  static const String verifyEmail = '/verify-email';
  static const String phone = '/phone';
  static const String sms = '/sms';
  static const String forgotPassword = '/forgot-password';
  static const String emailLinkSignIn = '/email-link-sign-in';
  static const String profile = '/profile';
  static const String main = '/main';
}
