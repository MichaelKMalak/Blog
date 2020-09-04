import 'dart:convert';

class Encoder {
  static String encode(String x) => utf8.fuse(base64).encode(x);
  static String decode(String x) => utf8.fuse(base64).decode(x);
}
