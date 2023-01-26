part of 'post_bloc.dart';

abstract class PostState extends Equatable {
  const PostState();

  @override
  List<Object> get props => [];
}

class PostInitial extends PostState {}

class PostsLoading extends PostState {
  @override
  List<Object> get props => [];
}

class PostsFetched extends PostState {
  List<Post> fetchedPosts;
  PostsFetched(this.fetchedPosts);

  @override
  List<Object> get props => fetchedPosts;
}

class PostError extends PostState {
  final String error;
  const PostError(this.error);

  @override
  List<Object> get props => [error];
}
