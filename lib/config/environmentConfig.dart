import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class EnvironmentConfig {
  static String get fileName => kReleaseMode ? ".env.prod" : ".env.dev";

  static String get urlBase => dotenv.env['URL_BASE'] ?? 'Not_found_URL_BASE';
  static String get urlPostEmployees => dotenv.env['URL_POST_EMPLOYEES'] ?? 'Not_found_URL_POST_EMPLOYEES';
  static String get urlPostReports => dotenv.env['URL_POST_REPORTS'] ?? 'Not_found_URL_POST_REPORTS';
  static String get urlPostSquads => dotenv.env['URL_POST_SQUADS'] ?? 'Not_found_URL_POST_SQUADS';
}