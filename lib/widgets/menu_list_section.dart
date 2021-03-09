import 'package:flutter/material.dart';
import 'package:flutter_menu_list/flutter_menu_list.dart';

class MenuListSection extends StatelessWidget {
  const MenuListSection({
    this.title = const MenuListSectionTitle(title: ''),
    required this.menus,
    this.lineIndent = 45,
  });

  final Widget title;

  final List<Widget> menus;

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
