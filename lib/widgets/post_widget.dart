import 'package:flutter/material.dart';
import 'package:mews_talk_firebase/models/post_model.dart';
import 'package:mews_talk_firebase/models/user_model.dart';
import 'package:mews_talk_firebase/utils/constants/styles.dart';
import 'package:mews_talk_firebase/utils/extensions/date_formats.dart';
import 'package:mews_talk_firebase/widgets/user_image_container.dart';

class PostContainer extends StatelessWidget {
  final Post post;
  const PostContainer({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          width: double.infinity,
          decoration: shadowBoxDecoration(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  userImageContainer(40),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '${User.loggedUser.firstname} ${User.loggedUser.lastname}',
                          style: titleMedium,
                        ),
                        Text(
                          showFormattedDate(post.date),
                          style: dateStyle,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 5),
                child: Text(
                  post.data,
                ),
              ),
            ],
          ),
        ));
  }
}
