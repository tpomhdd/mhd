import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class Api {
  Future<http.Response> get({required String uri}) async {
    http.Response response = await http.get(Uri.parse(uri));
    if (response.statusCode == 200) {
      return response;
    } else {
      throw Exception('statusCode  ${response.statusCode}');
    }
  }

  Future<dynamic> post(
      {required String url,
      @required dynamic body,
      @required dynamic token}) async {
    Map<String, String> headers = {};
    if (token != null) {
      headers.addAll({
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${token}'
      });
    }
    http.Response response = await http.post(
        Uri.parse(url),
        body: body,
    headers: headers);
if(response.statusCode==200){
  Map<String,dynamic> data=jsonDecode(response.body);

  return data;
}
else throw Exception('there is a problem with status code ${response.statusCode} with body ${jsonDecode(response.body)}');


  }
}
