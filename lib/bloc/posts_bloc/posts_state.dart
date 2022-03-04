part of 'posts_bloc.dart';

@immutable
abstract class PostsState extends Equatable {
  const PostsState();

  @override
  List<Object> get props => [];
}

class PostsInitial extends PostsState {}

class PostsFetched extends PostsState {
  final List<Post> posts;

  const PostsFetched(this.posts);

  @override
  List<Object> get props => [posts];
}

class PostsFetchError extends PostsState {
  final String message;
  const PostsFetchError(this.message);

  @override
  List<Object> get props => [message];
}
