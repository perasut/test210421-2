import 'dart:convert';

import 'package:test210421/models/LoginModel.dart';
import 'package:test210421/models/NewsDetailModel.dart';
import 'package:test210421/models/NewsModel.dart';
import 'package:http/http.dart' as http;

class CallAPI {
  _setHeaders() =>
      {'Content-Type': 'application/json', 'Accept': 'application/json'};

  final String baseAPIURL =
      // 'https://www.itgenius.co.th/sandbox_api/flutteradvapi/public/api/';
      'http://202.43.47.251/cabbitslim/public/api/';

  // Login API
  loginAPI(data) async {
    return await http.post(baseAPIURL + 'login',
        body: jsonEncode(data), headers: _setHeaders());
    // body: jsonEncode(data));
  }

  // Read User Profile
  Future<LoginModel> getProfile(data) async {
    final response = await http.post(baseAPIURL + 'login',
        body: jsonEncode(data), headers: _setHeaders());
    // body: jsonEncode(data));
    return loginModelFromJson(response.body);
    // if (response.statusCode == 200) {
    //   return loginModelFromJson(response.body);
    // } else {
    //   return null;
    // }
  }

  // Read Last News
  // Future<List<NewsModel>> getLastNews() async {
  //   final response =
  //       await http.get(baseAPIURL + 'lastnews', headers: _setHeaders());
  //   if (response.body != null) {
  //     return newsModelFromJson(response.body);
  //   } else {
  //     return null;
  //   }
  // }

  // Read All News
  // Future<List<NewsModel>> getAllNews() async {
  //   final response =
  //       await http.get(baseAPIURL + 'news', headers: _setHeaders());
  //   if (response.body != null) {
  //     return newsModelFromJson(response.body);
  //   } else {
  //     return null;
  //   }
  // }

  // Read News Detail By ID
  // Future<NewsDetailModel> getNewsDetail(id) async {
  //   final response =
  //       await http.get(baseAPIURL + 'news/' + id, headers: _setHeaders());
  //   if (response.body != null) {
  //     return newsDetailModelFromJson(response.body);
  //   } else {
  //     return null;
  //   }
  // }
}
