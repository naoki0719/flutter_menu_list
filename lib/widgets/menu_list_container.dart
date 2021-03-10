import 'package:flutter/material.dart';
import 'package:flutter_menu_list/flutter_menu_list.dart';

/// A widget that contains a [MenuListSection]
class MenuListContainer extends StatelessWidget {
  const MenuListContainer({
    Key? key,
    required this.sections,
    this.sectionSpace = 30,
    this.theme,
    this.darkTheme,
  }) : super(key: key);

  /// Specifies the list of [MenuListSection].
  final List<Widget> sections;

  /// Specify the space between [Section]s.
  /// Default: `30`
  final double sectionSpace;

  /// Overwrite the light theme.
  final ThemeData? theme;

  /// Overwrite the dark theme.
  final ThemeData? darkTheme;

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
          shrinkWrap: true,
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
