import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mews_talk_firebase/blocs/post_bloc/post_bloc.dart';
import 'package:mews_talk_firebase/repositories/post_repository.dart';
import 'package:mews_talk_firebase/utils/constants/styles.dart';
import 'package:mews_talk_firebase/views/posts_view.dart';
import 'package:mews_talk_firebase/widgets/user_header.dart';
import 'package:mews_talk_firebase/widgets/user_image_container.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: generalBgColor,
      body: BlocProvider(
        create: (context) =>
            PostBloc(postRepository: PostRepository())..add(const FetchPosts()),
        child: BlocBuilder<PostBloc, PostState>(
          builder: (context, state) {
            if (state is PostsLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            if (state is PostError) {
              return const Center(
                child: Text('Unexpected Error occured'),
              );
            }
            if (state is PostsFetched) {
              return Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 50, right: 50, top: 70, bottom: 20),
                    child: UserHeaderBadge(
                      state: state,
                    ),
                  ),
                  PostsView(
                    state: state,
                  ),
                ],
              );
            } else {
              return const Center(
                child: Text('Unexpected State occured'),
              );
            }
          },
        ),
      ),
    );
  }
}
