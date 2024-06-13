import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news_app/api/api_constant.dart';
import 'package:news_app/models/news_response/news_response.dart';
import 'package:news_app/models/sources_response/sources_response.dart';

class ApiService {
  static Future<SourcesResponse> getSources(String categoryId) async {
    try {
      final uri = Uri.https(
        ApiConstant.baseUrl,
        ApiConstant.sourcesEndPoint,
        {
          'apiKey': ApiConstant.apiKey,
          'category': categoryId,
        },
      );
      final respone = await http.get(uri);

      final json = jsonDecode(respone.body);
      return SourcesResponse.fromJson(json);
    } catch (e) {
      print('---------------------Errrorrr--------------------------');
      print(e);
      print('---------------------Errrorrr--------------------------');
/*
* same thing it just throw error to the widget we call the function
* for example to use showdialog coz it need context and here there is no context
* */
      throw e;
// rethrow;
    }
  }

  static Future<NewsResponse> getNews(String sourceId) async {
    try {
      final uri = Uri.https(ApiConstant.baseUrl, ApiConstant.newsEndPotint,
          {'apiKey': ApiConstant.apiKey, 'sources': sourceId});
      final response = await http.get(uri);
      final json = jsonDecode(response.body);
      return NewsResponse.fromJson(json);
    } catch (error) {
      print(error);
      rethrow;
    }
  }
}
