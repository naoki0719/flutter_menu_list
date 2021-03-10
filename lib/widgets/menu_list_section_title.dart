import 'package:flutter/material.dart';

/// Provides a widget for the title of an optimized section.
class MenuListSectionTitle extends StatelessWidget {
  const MenuListSectionTitle({
    Key? key,
    required this.title,
    this.padding = const EdgeInsets.only(
      top: 8.0,
      bottom: 8.0,
      left: 45.0,
      right: 15.0,
    ),
    this.textStyle = const TextStyle(
      color: Color(0x8AFFFFFF),
    ),
  }) : super(key: key);

  final String title;
  final EdgeInsetsGeometry padding;
  final TextStyle textStyle;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.transparent),
      padding: padding,
      child: Text(
        title,
        style: textStyle,
      ),
    );
  }
}
