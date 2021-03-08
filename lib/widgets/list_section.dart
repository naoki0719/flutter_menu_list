import 'package:flutter/material.dart';
import 'package:flutter_menu_list/flutter_menu_list.dart';

class ListSection extends StatelessWidget {
  final Widget title;

  final List<Widget> menus;

  const ListSection({
    this.title = const ListTitle(),
    required this.menus,
  });

  @override
  Widget build(BuildContext context) {
    final list = [title, ...menus];
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => list[index],
      separatorBuilder: (context, index) {
        if (index > 0) {
          return Divider(height: 0, indent: 30);
        }
        return Container();
      },
      itemCount: list.length,
    );
  }
}
