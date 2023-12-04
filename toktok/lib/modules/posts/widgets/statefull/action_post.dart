import 'package:flutter/material.dart';
import 'package:toktok/utils/uiData.dart';

class ActionPost extends StatefulWidget {
  const ActionPost({Key? key}) : super(key: key);

  @override
  State<ActionPost> createState() => _ActionPostState();
}

class _ActionPostState extends State<ActionPost> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: const ImageIcon(
              AssetImage(UIData.iconHeart),
              color: Colors.white,
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          IconButton(
            onPressed: () {},
            icon: const ImageIcon(
              AssetImage(UIData.iconChat),
              color: Colors.white,
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          IconButton(
            onPressed: () {},
            icon: const ImageIcon(
              AssetImage(UIData.iconSend),
              color: Colors.white,
            ),
          ),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: const ImageIcon(
              AssetImage(UIData.iconBookmark),
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
