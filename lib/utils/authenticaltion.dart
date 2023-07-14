import 'package:firebase_auth/firebase_auth.dart'
    hide PhoneAuthProvider, EmailAuthProvider;
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:firebase_ui_localizations/firebase_ui_localizations.dart';
import 'package:firebase_ui_oauth_apple/firebase_ui_oauth_apple.dart';
import 'package:firebase_ui_oauth_facebook/firebase_ui_oauth_facebook.dart';
import 'package:firebase_ui_oauth_google/firebase_ui_oauth_google.dart';
// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:module_auth/utils/label_overrides.dart';
import 'package:module_auth/common/config/auth_config.dart' as auth_config;

abstract class Authentication {
  static configureProviders() {
    return FirebaseUIAuth.configureProviders([
      EmailAuthProvider(),
      emailLinkProviderConfig,
      PhoneAuthProvider(),
      GoogleProvider(clientId: auth_config.googleClientId),
      AppleProvider(),
      FacebookProvider(clientId: auth_config.facebookClientId),
    ]);
  }

  static final Iterable<LocalizationsDelegate<dynamic>> localization = [
    // Creates an instance of FirebaseUILocalizationDelegate with overridden labels
    FirebaseUILocalizations.withDefaultOverrides(const LabelOverrides()),
    // Delegates below take care of built-in flutter widgets
    GlobalMaterialLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,

    // This delegate is required to provide the labels that are not overridden by LabelOverrides
    FirebaseUILocalizations.delegate,
  ];
}

final actionCodeSettings = ActionCodeSettings(
  url: 'https://flutterfire-e2e-tests.firebaseapp.com', // redirect URL
  handleCodeInApp: true,
  androidMinimumVersion: '12',
  androidPackageName: 'com.example.module_auth',
  iOSBundleId: 'com.example.module_auth',
);

final emailLinkProviderConfig =
    EmailLinkAuthProvider(actionCodeSettings: actionCodeSettings);

final mfaAction = AuthStateChangeAction<MFARequired>(
  (context, state) async {
    final nav = Navigator.of(context);

    await startMFAVerification(
      resolver: state.resolver,
      context: context,
    );

    nav.pushReplacementNamed('/profile');
  },
);
