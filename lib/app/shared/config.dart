import 'package:flutter_dotenv/flutter_dotenv.dart';

class Config {
  static String get title => _get('title');
  static String get baseUrl => _get('baseUrl');
  static String get environment => _get('environment');
  static int get ano => _getInt('ano');

  static String _get(String name) => DotEnv().env[name] ?? '';
  static int _getInt(String name) => int.parse(DotEnv().env[name]);
}

