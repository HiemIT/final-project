import 'package:flutter/material.dart';

import '../../../themes/text_styles.dart';
import '../../../utils/uiData.dart';
import '../widgets/item_setting.dart';

class SettingScreen extends StatelessWidget {
  final List<Widget> itemsSetting = const [
    ItemSetting(
      icon: UIData.iconAddUser,
      tittle: 'Follow and Invite Friends',
    ),
    ItemSetting(
      icon: UIData.iconNotify,
      tittle: 'Notifications',
    ),
    ItemSetting(
      icon: UIData.iconLock,
      tittle: 'Privacy',
    ),
    ItemSetting(
      icon: UIData.iconSecurity,
      tittle: 'Security',
    ),
    ItemSetting(
      icon: UIData.iconAds,
      tittle: 'Ads',
    ),
    ItemSetting(
      icon: UIData.iconAccount,
      tittle: 'Account',
    ),
    ItemSetting(
      icon: UIData.iconAbout,
      tittle: 'About',
    ),
    ItemSetting(
      icon: UIData.iconEye,
      tittle: 'Dark Theme',
      isDarkTheme: true,
    ),
  ];

  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back_ios_new,
        ),
        title: const Text(
          'Setting',
        ),
      ),
      body: Container(
        child: ListView.builder(
          itemCount: itemsSetting.length,
          itemBuilder: (context, index) {
            return itemsSetting[index];
          },
        ),
      ),
    );
  }
}
