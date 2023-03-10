import 'dart:convert';
import 'dart:ffi';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:metiz_cinema/models/post.dart';

class movieAPI {
  static const String url = 'https://63c4c7d7e1292e5bea156ec9.mockapi.io/api/v1/movies';
  static List<Post> parsePost(String responseBody) {
    var list = json.decode(responseBody) as List<dynamic>;
    List<Post> posts = list.map((model) => Post.fromJson(model)).toList();
    return posts;
  }

  static Future<List<Post>> fetchPost({int page = 1}) async {
    http.Response response = await http.get(Uri.parse(url));
    String source = Utf8Decoder().convert(response.bodyBytes);
    if (response.statusCode == 200) {
      return compute(parsePost, source);
    } else if (response.statusCode == 404) {
      throw Exception('Not Found');
    } else {
      throw Exception('Can\'t get post');
    }
  }
}