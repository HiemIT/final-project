import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:toktok/themes/app_colors.dart';

import '../../../utils/uiData.dart';
import '../widgets/statefull/post_item.dart';

class ListPostsPage extends StatefulWidget {
  const ListPostsPage({super.key});

  @override
  State<ListPostsPage> createState() => _ListPostsPageState();
}

class _ListPostsPageState extends State<ListPostsPage> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final iconColor = Theme.of(context).iconTheme;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SvgPicture.asset(UIData.iconLogo, width: 32, height: 32),
                      const SizedBox(
                        width: 20,
                      ),
                      Text(
                        'TokTok',
                        style: textTheme.headlineSmall,
                        textHeightBehavior: const TextHeightBehavior(
                          applyHeightToFirstAscent: false,
                          applyHeightToLastDescent: false,
                        ),
                      ),
                    ],
                  ),
                  //
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Spacer(),
                        IconButton(
                          onPressed: () {},
                          icon: ImageIcon(
                            const AssetImage(UIData.iconHeart),
                            color: iconColor.color,
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Badge(
                          label: const Text(
                            '3',
                            style: TextStyle(
                              color: AppColors.white,
                              fontSize: 12,
                            ),
                          ),
                          child: IconButton(
                            onPressed: () {},
                            icon: ImageIcon(
                              const AssetImage(UIData.iconChat),
                              color: iconColor.color,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              // PostItem,
              const SizedBox(
                height: 20,
              ),
              const PostItem(),
            ],
          ),
        ),
      ),
    );
  }
}
