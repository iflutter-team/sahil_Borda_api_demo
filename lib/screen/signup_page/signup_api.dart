import 'package:firebase_demo/json/api_model.dart';
import 'package:firebase_demo/services/http_service.dart';
import 'package:firebase_demo/utils/api_res.dart';
import 'package:http/http.dart' as http;

class SignupApi {
  static Future postApi(Map<String, dynamic>? body) async {
    try {
      http.Response? response = await HttpService.postAPi(
          url: EndPointApiRes.signUpUrl,
          body: body,
          header: {'Content-Type': 'application/json'});
      if (response != null && response.statusCode == 200) {
        return getPostFromJson(response.body);
      }
    } catch (e) {
      print(e);
    }
  }
}
