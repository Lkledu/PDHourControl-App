import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class EnvironmentConfig {
  static String get fileName => kReleaseMode ? ".env.prod" : ".env.dev";

  static String get urlBase => dotenv.env['URL_BASE'] ?? 'Not_found_URL_BASE';
  static String get urlPostEmployees => dotenv.env['URL_POST_EMPLOYEE'] ?? 'Not_found_URL_POST_EMPLOYEE';
  static String get urlPostReports => dotenv.env['URL_POST_REPORT'] ?? 'Not_found_URL_POST_REPORT';
  static String get urlPostSquads => dotenv.env['URL_POST_SQUAD'] ?? 'Not_found_URL_POST_SQUAD';
  static String get urlGetEmployees => dotenv.env['URL_GET_EMPLOYEES'] ?? 'Not_found_URL_GET_EMPLOYEES';
  static String get urlGetSquads => dotenv.env['URL_GET_SQUADS'] ?? 'Not_found_URL_GET_SQUADS';
}