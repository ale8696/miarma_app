import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:miarma_app/model/posts/post_response.dart';
import 'package:miarma_app/repository/posts_repository/posts_repository.dart';

part 'posts_event.dart';
part 'posts_state.dart';

class PostsBloc extends Bloc<PostsEvent, PostsState> {
  final PostsRepository postsRepository;

  PostsBloc(this.postsRepository) : super(PostsInitial()) {
    on<FetchPublicPosts>(_postsFetched);
  }

  void _postsFetched(FetchPublicPosts event, Emitter<PostsState> emit) async {
    try {
      final posts = await postsRepository.fetchPosts();
      emit(PostsFetched(posts));
      return;
    } on Exception catch (e) {
      emit(PostsFetchError(e.toString()));
    }
  }
}
