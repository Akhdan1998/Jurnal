import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:jurnal/Models/model_merek.dart';
import '../Models/api_return_merek.dart';

class MerekServices {
  static Future<ApiReturnMerek<List<MerekImunisasi>>?> getMerek(
      String token, String id,
      {http.Client? client}) async {
    String baseUrl =
        'url-backend$id';
    if (client == null) {
      client = http.Client();
    }
    String url = baseUrl;
    var response = await client.get(Uri.parse(url), headers: {
      'Content-Type': 'application/json',
      'Authorization': '${token}'
    });
    if (response.statusCode != 200) {
      return ApiReturnMerek(message: 'Please try Again');
    }
    var data = jsonDecode(response.body);
//jika backand berbentuk list
    List<MerekImunisasi> value = (data['data'] as Iterable)
        .map((e) => MerekImunisasi.fromJson(e))
        .toList();
//jika backand tidak berbentuk list
    //CommunityGroup value1 = CommunityGroup.fromJson(data['data']);
    return ApiReturnMerek(value: value);
  }
}
