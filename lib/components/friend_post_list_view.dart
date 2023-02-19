import 'package:flutter/material.dart';

import '../models/models.dart';
import 'components.dart';

class FriendPostListView extends StatelessWidget {
  const FriendPostListView({super.key, required this.posts});

  final List<Post> posts;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Social Chefs 👩‍🍳',
            style: Theme.of(context).textTheme.headline1,
          ),
          const SizedBox(
            height: 16,
          ),
          ListView.separated(
              primary: false,
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return FriendPostTile(post: posts[index]);
              },
              separatorBuilder: (context, index) {
                return const SizedBox(
                  height: 16,
                );
              },
              itemCount: posts.length)
        ],
      ),
    );
  }
}
