import 'package:flutter/material.dart';
import 'package:mews_talk_firebase/blocs/post_bloc/post_bloc.dart';
import 'package:mews_talk_firebase/models/post_model.dart';
import 'package:mews_talk_firebase/widgets/post_widget.dart';

class PostsView extends StatelessWidget {
  final PostState state;
  const PostsView({super.key, required this.state});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: MediaQuery.of(context).size.height - 250,
      child: ListView.builder(
        itemCount: state.props.length,
        padding: const EdgeInsets.all(0),
        itemBuilder: (context, index) {
          return PostContainer(
            post: state.props[index] as Post,
          );
        },
      ),
    );
  }
}
