part of 'post_bloc.dart';

abstract class PostEvent extends Equatable {
  const PostEvent();

  @override
  List<Object> get props => [];
}

class CreatePost extends PostEvent {
  final String data;
  final String userId;

  const CreatePost(this.data, this.userId);
}

class FetchPosts extends PostEvent {
  const FetchPosts();
}

class StreamPosts extends PostEvent {
  const StreamPosts();
}
