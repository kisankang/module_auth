import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/route_manager.dart';
import 'package:module_auth/common/theme/app_theme.dart';
import 'package:module_auth/firebase_options.dart';
import 'package:module_auth/utils/authenticaltion.dart';
import 'package:module_auth/routes/app_pages.dart';
import 'package:module_auth/routes/app_routes.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await dotenv.load(fileName: "assets/auth.env");

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  Authentication.configureProviders();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: AppTheme.theme,
      initialRoute: Routes.initialRoute,
      // routes: Authentication.routes(context),
      getPages: AppPages.pages,
      localizationsDelegates: [...Authentication.localization],
    );
  }
}
