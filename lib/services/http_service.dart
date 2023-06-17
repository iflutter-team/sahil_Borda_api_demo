import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class HttpService {
  static Future<http.Response?> getAPi({required String url}) async {
    try {
      if (kDebugMode) {
        print("Url====> $url");
      }
      return await http.get(Uri.parse(url));
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return null;
    }
  }

  static Future<http.Response?> postAPi({
    required String url,
    Map<String, dynamic>? body,
    Map<String, String>? header,
  }) async {
    try {
      if (kDebugMode) {
        print("Url====> $url");
        print("body====> $body");
        print("Header====> $header");
      }
      return await http.post(Uri.parse(url),
          body: jsonEncode(body), headers: header);
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return null;
    }
  }
}
