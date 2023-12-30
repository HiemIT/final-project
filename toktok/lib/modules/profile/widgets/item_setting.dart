import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:toktok/blocs/app_theme/app_theme_bloc.dart';
import 'package:toktok/blocs/app_theme/app_theme_event.dart';
import 'package:toktok/blocs/app_theme/app_theme_state.dart';
import 'package:toktok/themes/app_colors.dart';

import '../../../blocs/theme/theme_bloc.dart';
import '../../../utils/enum.dart';

class ItemSetting extends StatefulWidget {
  const ItemSetting(
      {super.key,
      required this.tittle,
      required this.icon,
      this.isDarkTheme = false});

  final String tittle;
  final String icon;
  final bool isDarkTheme;

  @override
  State<ItemSetting> createState() => _ItemSettingState();
}

class _ItemSettingState extends State<ItemSetting> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).iconTheme;

    return Container(
      padding: const EdgeInsets.all(24),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // use SvgPicture for icon svg
          SvgPicture.asset(
            widget.icon,
            width: 21.38,
            height: 21.38,
            color: textTheme.color,
          ),
          const SizedBox(width: 20),
          Text(
            widget.tittle,
            textHeightBehavior: const TextHeightBehavior(
              applyHeightToFirstAscent: false,
              applyHeightToLastDescent: false,
            ),
          ),
          const Spacer(),
          if (widget.isDarkTheme)
            BlocBuilder<AppThemeBloc, AppThemeState>(
              builder: (context, state) {
                return Switch(
                  value: state is AppThemeChangeState
                      ? state.appThemeType == ThemeType.darkTheme
                      : false,
                  onChanged: (value) {
                    print(value);
                    value
                        ? BlocProvider.of<AppThemeBloc>(context)
                            .add(AppThemeDarkEvent())
                        : BlocProvider.of<AppThemeBloc>(context)
                            .add(AppThemeLightEvent());
                  },
                );
              },
            ),
        ],
      ),
    );
  }
}
