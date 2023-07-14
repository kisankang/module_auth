import 'package:flutter_dotenv/flutter_dotenv.dart';

final googleClientId = dotenv.env['GOOGLE_CLIENT_ID'] ?? "";
final facebookClientId = dotenv.env['FACEBOOK_CLIENT_ID'] ?? "";
