import 'package:flutter/material.dart';

void emptyFunc() {}

class ListMenu extends StatelessWidget {
  final Widget? leading;
  final Widget title;
  final Widget trailing;
  final void Function()? onTap;
  final ThemeData? theme;
  final ThemeData? darkTheme;

  const ListMenu({
    this.leading,
    required this.title,
    this.trailing = const Icon(
      Icons.arrow_forward_ios,
      size: 20,
    ),
    this.onTap,
    this.theme,
    this.darkTheme,
  });

  ThemeData _getThemeData(BuildContext context) {
    final appTheme = Theme.of(context);
    if (appTheme.brightness == Brightness.dark) {
      return darkTheme ?? appTheme;
    }

    return theme ?? appTheme;
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: _getThemeData(context),
      child: ListTile(
        onTap: onTap,
        leading: leading,
        title: title,
        trailing: trailing,
      ),
    );
  }
}
