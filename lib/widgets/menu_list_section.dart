import 'package:flutter/material.dart';
import 'package:flutter_menu_list/flutter_menu_list.dart';

class MenuListSection extends StatelessWidget {
  const MenuListSection({
    Key? key,
    this.title = const MenuListSectionTitle(title: ''),
    required this.menus,
    this.lineIndent = 45,
  }) : super(key: key);

  final Widget title;

  /// It is recommended to use [MenuListContent],
  /// but you can also use a customized widget.
  final List<Widget> menus;

  /// Indenting [Divider] Lines
  final double lineIndent;

  @override
  Widget build(BuildContext context) {
    final list = [title, ...menus];
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => list[index],
      separatorBuilder: (context, index) {
        if (index > 0) {
          return Divider(thickness: 1, height: 0, indent: lineIndent);
        }
        return Container();
      },
      itemCount: list.length,
    );
  }
}
