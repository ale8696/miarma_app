import 'dart:convert';

import 'package:http/http.dart';
import 'package:miarma_app/model/posts/post_response.dart';
import 'package:miarma_app/repository/posts_repository/posts_repository.dart';
import 'package:miarma_app/utils/preferences.dart';

class PostsRepositoryImpl extends PostsRepository {
  final Client _client = Client();

  @override
  Future<List<Post>> fetchPosts() async {
    String? token = await PreferenceUtils.getString('token');

    Map<String, String> header = {
      'Authorization': token!,
    };

    final response = await _client.get(
        Uri.parse('http://10.0.2.2:8080/publicacion/public'),
        headers: header);
    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Fail to load posts');
    }
  }
}
