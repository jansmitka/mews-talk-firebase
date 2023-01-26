import 'package:flutter/material.dart';
import 'package:mews_talk_firebase/blocs/post_bloc/post_bloc.dart';
import 'package:mews_talk_firebase/models/user_model.dart';
import 'package:mews_talk_firebase/utils/constants/styles.dart';
import 'package:mews_talk_firebase/widgets/user_image_container.dart';

class UserHeaderBadge extends StatelessWidget {
  final PostState state;
  const UserHeaderBadge({super.key, required this.state});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: shadowBoxDecoration(),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          userImageContainer(75),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${User.loggedUser.firstname} ${User.loggedUser.lastname}',
                  style: titleBig,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Text('Posts: '),
                    const SizedBox(
                      height: 25,
                    ),
                    Text(
                      state.props.length.toString(),
                      style: titleMedium,
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
