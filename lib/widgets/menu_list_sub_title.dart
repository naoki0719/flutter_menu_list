import 'dart:io';

import 'package:flutter/material.dart';

class MenuListSubTitle extends StatelessWidget {
  const MenuListSubTitle(
    this.text, {
    this.textStyle,
    this.padding,
  });

  final String text;
  final TextStyle? textStyle;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    final adaptiveStyle = Platform.isAndroid
        ? Theme.of(context).textTheme.subtitle1
        : Theme.of(context).textTheme.subtitle2;

    return Container(
      padding: padding,
      child: Expanded(
        child: Text(
          text,
          style: textStyle ?? adaptiveStyle,
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }
}
