import 'dart:convert';

import 'package:http/http.dart';
import 'package:miarma_app/model/posts/post_response.dart';
import 'package:miarma_app/repository/posts_repository/posts_repository.dart';

class PostsRepositoryImpl extends PostsRepository{
  final Client _client = Client();

  @override
  void fetchPosts() async{
    final response = await _client.get(Uri.parse('localhost:8080/post/public'));
    if (response.statusCode == 200) {
      
    }
  }
  
}