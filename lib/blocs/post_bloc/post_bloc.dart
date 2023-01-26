import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:mews_talk_firebase/models/post_model.dart';
import 'package:mews_talk_firebase/repositories/post_repository.dart';

part 'post_event.dart';
part 'post_state.dart';

class PostBloc extends Bloc<PostEvent, PostState> {
  final PostRepository postRepository;
  PostBloc({required this.postRepository}) : super(PostInitial()) {
    on<FetchPosts>((event, emit) async {
      emit(PostsLoading());
      try {
        final result = await postRepository.fetchPosts();
        emit(PostsFetched(result));
      } catch (e) {
        emit(PostError(e.toString()));
      }
    });

    on<CreatePost>((event, emit) async {});
  }
}
