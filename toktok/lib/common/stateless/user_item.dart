import 'package:flutter/material.dart';

class UserItem extends StatelessWidget {
  const UserItem({
    super.key,
    required this.avt,
    required this.tittle,
    required this.caption,
    required this.customWidget,
  });

  final String avt, tittle, caption;
  final Widget customWidget;

  // button

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Container(
      child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // avt
            CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage(avt),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    tittle,
                    style: textTheme.titleMedium,
                  ),
                  Text(
                    caption,
                    style: textTheme.titleSmall?.copyWith(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      height: 0,
                      letterSpacing: 0.20,
                    ),
                  ),
                ],
              ),
            ),
            // button
            const Spacer(),
            customWidget,
          ]),
    );
  }
}
