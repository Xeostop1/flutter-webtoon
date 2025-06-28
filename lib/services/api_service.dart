import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:projets/models/webtoon_model.dart';

class ApiService{
  static const String baseUrl = 'https://webtoon-crawler.nomadcoders.workers.dev';
  static const String today= 'today';

  // 퓨쳐 타입과 어씽크 어웨잇을 쓴다
 static Future<List<WebtoonModel>> getTodaysToons()async {
    List<WebtoonModel> webtoontoonInstances = [];
    final url= Uri.parse('$baseUrl/$today');
   final response = await http.get(url);
    if(response.statusCode==200){
      final List<dynamic> webtoos = jsonDecode(response.body);
      for (var webtoon in webtoos){
        final toon = WebtoonModel.fromJson(webtoon);
        webtoontoonInstances.add(toon);
      }
      return webtoontoonInstances;
    }
    throw Error();
  }


}