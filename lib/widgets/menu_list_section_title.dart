import 'package:flutter/material.dart';

class MenuListSectionTitle extends StatelessWidget {
  const MenuListSectionTitle({
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
  });

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
