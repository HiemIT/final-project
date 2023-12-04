import 'package:flutter/material.dart';
import 'package:toktok/modules/posts/pages/list_posts_page.dart';
import 'package:toktok/themes/app_colors.dart';
import 'package:toktok/utils/uiData.dart';

class DashboardPage extends StatefulWidget {
  static const String routeName = '/dashboard';

  const DashboardPage({super.key});

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int _index = 0;

  final List<Widget> _children = [
    const ListPostsPage(),
    Container(),
    Container(),
    Container(),
    Container(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          const BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(UIData.iconHome)),
            label: 'Home',
          ),
          const BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(UIData.iconSearch)),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Align(
              alignment: Alignment.center,
              child: Container(
                padding: const EdgeInsets.only(
                  top: 14.10,
                  left: 14.10,
                  right: 13.98,
                  bottom: 13.98,
                ),
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: const Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
            ),
            label: '',
            backgroundColor: AppColors.grey800,

            // custom
          ),
          const BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage(UIData.iconPlay),
            ),
            label: 'Shorts',
          ),
          const BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(UIData.iconProfile)),
            label: 'Profile',
          ),
        ],
        currentIndex: _index,
        selectedItemColor: AppColors.primary,
        unselectedItemColor: AppColors.grey500,
        backgroundColor: AppColors.dark3,
        type: BottomNavigationBarType.fixed,
        elevation: 0,
        onTap: onTabTapped,
      ),
      body: _children[_index],
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _index = index;
    });
  }
}
