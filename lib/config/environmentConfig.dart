import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class EnvironmentConfig {
  static String get fileName => kReleaseMode ? ".env.prod" : ".env.dev";

  static String get urlBase => dotenv.env['URL_BASE'] ?? 'Not_found_URL_BASE';
}