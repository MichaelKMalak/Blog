import 'dart:convert';

class EnvironmentConfig {
  static const encodedAccessToken = String.fromEnvironment('ACCESS_TOKEN');
  static String githubAccessToken =
      utf8.fuse(base64).decode(encodedAccessToken);
}
