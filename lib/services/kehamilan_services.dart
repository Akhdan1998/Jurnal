import 'dart:convert';

import 'package:http/http.dart' as http;
import '../Models/api_return_kehamilan.dart';
import '../Models/model_kehamilan.dart';

String baseUrl = 'https://dashboard.parentoday.com/api/jurnal/kehamilan';

class KehamilanServices {
  static Future<ApiReturnKehamilan<List<Tekdung>>?> getKehamilan(String token,
      {http.Client? client}) async {
    if (client == null) {
      client = http.Client();
    }
    String url = baseUrl;

    var response = await client.get(Uri.parse(url), headers: {
      'Content-Type': 'application/json',
      'Authorization': '${token}'
    });
    if (response.statusCode != 200) {
      return ApiReturnKehamilan(message: 'Please try Again');
    }
    var data = jsonDecode(response.body);
//jika backand berbentuk list
    List<Tekdung> value =
        (data['data'] as Iterable).map((e) => Tekdung.fromJson(e)).toList();
//jika backand tidak berbentuk list
    //CommunityGroup value1 = CommunityGroup.fromJson(data['data']);
    return ApiReturnKehamilan(value: value);
  }
}
