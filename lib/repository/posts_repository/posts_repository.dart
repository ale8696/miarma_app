import 'package:miarma_app/model/posts/post_response.dart';

abstract class PostsRepository {
  Future<List<Post>> fetchPosts();
}
