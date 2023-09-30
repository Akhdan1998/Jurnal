import 'dart:convert';

import 'package:http/http.dart' as http;

import '../Models/api_return_berat.dart';
import '../Models/api_return_lk.dart';
import '../Models/model_berat.dart';
import '../Models/model_lk.dart';

class LkServices {
  static Future<ApiReturnLk<List<Lk>>?> getLk(String token, String anak_id,
      {http.Client? client}) async {
    String baseUrl =
        'url-backend${anak_id}';
    if (client == null) {
      client = http.Client();
    }
    String url = baseUrl;
    var response = await client.get(Uri.parse(url), headers: {
      'Content-Type': 'application/json',
      'Authorization': '${token}'
    });
    if (response.statusCode != 200) {
      return ApiReturnLk(message: 'Please try Again');
    }
    var data = jsonDecode(response.body);
//jika backand berbentuk list
    List<Lk> value =
    (data['data'] as Iterable).map((e) => Lk.fromJson(e)).toList();
//jika backand tidak berbentuk list
    //CommunityGroup value1 = CommunityGroup.fromJson(data['data']);
    return ApiReturnLk(value: value);
  }
}
