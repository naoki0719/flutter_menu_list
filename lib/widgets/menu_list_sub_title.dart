import 'package:flutter/material.dart';

class MenuListSubTitle extends StatelessWidget {
  const MenuListSubTitle(
    this.text, {
    Key? key,
    this.textStyle,
    this.padding,
  }) : super(key: key);

  final String text;
  final TextStyle? textStyle;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    final adaptiveStyle = Theme.of(context).platform == TargetPlatform.android
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
