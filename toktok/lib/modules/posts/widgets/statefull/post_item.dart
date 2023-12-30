import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:toktok/common/stateless/user_item.dart';
import 'package:toktok/utils/uiData.dart';

class PostItem extends StatefulWidget {
  const PostItem({super.key});

  @override
  State<PostItem> createState() => _PostItemState();
}

class _PostItemState extends State<PostItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          UserItem(
              avt:
                  'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3wxMTgwOTN8MHwxfHNlYXJjaHwxfHxhdmF0YXJ8ZW58MHx8fHwxNzAyNDU3MTE4fDA&ixlib=rb-4.0.3&q=80&w=1080',
              tittle: "John Stone",
              caption: "Mobile Dev",
              customWidget: IconButton(
                onPressed: () {
                  print('Close');
                },
                icon: SvgPicture.asset(UIData.iconMore),
              ))
        ],
      ),
    );
  }
}
