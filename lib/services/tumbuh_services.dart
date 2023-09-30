import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:jurnal/Models/api_return_tumbuh.dart';
import 'package:jurnal/Models/model_pertumbuhan.dart';

class TumbuhServices {
  static Future<ApiReturnTumbuh<List<Pertumbuhan>>?> getTumbuh(String token,
      {http.Client? client}) async {
    String baseUrl =
        'url-backend';
    if (client == null) {
      client = http.Client();
    }
    String url = baseUrl;
    var response = await client.get(Uri.parse(url), headers: {
      'Content-Type': 'application/json',
      'Authorization': '${token}'
    });
    if (response.statusCode != 200) {
      return ApiReturnTumbuh(message: 'Please try Again');
    }
    var data = jsonDecode(response.body);
//jika backand berbentuk list
    List<Pertumbuhan> value =
        (data['data'] as Iterable).map((e) => Pertumbuhan.fromJson(e)).toList();
//jika backand tidak berbentuk list
    //CommunityGroup value1 = CommunityGroup.fromJson(data['data']);
    return ApiReturnTumbuh(value: value);
  }
}
