import 'package:flutter/material.dart';
import 'package:toktok/themes/app_colors.dart';
import 'package:toktok/themes/text_styles.dart';

import '../../../utils/uiData.dart';
import '../widgets/stateless/post_item.dart';

class ListPostsPage extends StatefulWidget {
  const ListPostsPage({super.key});

  @override
  State<ListPostsPage> createState() => _ListPostsPageState();
}

class _ListPostsPageState extends State<ListPostsPage> {
  @override
  Widget build(BuildContext context) {
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
                      Image.asset(UIData.imgLogo),
                      const SizedBox(
                        width: 20,
                      ),
                      Text(
                        'TokTok',
                        style: TextStyles.heading4.copyWith(
                          color: AppColors.white,
                        ),
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
                          icon: const ImageIcon(
                            AssetImage(UIData.iconHeart),
                            color: AppColors.white,
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
                            icon: const ImageIcon(
                              AssetImage(UIData.iconChat),
                              color: AppColors.white,
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
              PostItem(),
            ],
          ),
        ),
      ),
    );
  }
}
