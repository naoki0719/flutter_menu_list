import 'package:flutter/material.dart';
import 'package:flutter_menu_list/flutter_menu_list.dart';

class MenuListContainer extends StatelessWidget {
  final List<Widget> sections;

  /// Default: `30`
  final double sectionSpace;

  final ThemeData? theme;
  final ThemeData? darkTheme;

  const MenuListContainer({
    required this.sections,
    this.sectionSpace = 30,
    this.theme,
    this.darkTheme,
  });

  ThemeData _getThemeData(BuildContext context) {
    if (Theme.of(context).brightness == Brightness.dark) {
      return darkTheme ?? MenuListThemes.darkTheme;
    }

    return theme ?? MenuListThemes.lightTheme;
  }

  @override
  Widget build(BuildContext context) {
    final themeData = _getThemeData(context);
    return Theme(
      data: themeData,
      child: Container(
        color: themeData.backgroundColor,
        height: double.infinity,
        child: ListView.separated(
          itemBuilder: (context, index) => sections[index],
          separatorBuilder: (context, index) => SizedBox(
            height: sectionSpace,
          ),
          itemCount: sections.length,
        ),
      ),
    );
  }
}
