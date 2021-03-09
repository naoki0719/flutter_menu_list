import 'dart:io';

import 'package:flutter/material.dart';

class MenuListContent extends StatelessWidget {
  final Widget? leading;
  final Widget title;
  final Widget? subTitle;
  final Widget trailing;
  final void Function()? onTap;
  final EdgeInsetsGeometry padding;
  final double leadingSpace;
  final bool? iosStyle;

  const MenuListContent({
    this.leading,
    required this.title,
    this.subTitle,
    this.trailing = const Icon(
      Icons.arrow_forward_ios,
      size: 20,
    ),
    this.onTap,
    this.padding = const EdgeInsets.only(
      right: 10,
      top: 14,
      bottom: 14,
    ),
    this.leadingSpace = 45,
    this.iosStyle,
  });

  @override
  Widget build(BuildContext context) {
    final ios = iosStyle ?? Platform.isIOS;

    return Material(
      color: Theme.of(context).primaryColor,
      child: InkWell(
        onTap: onTap,
        child: Container(
          padding: padding,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _ListMenuLeading(
                child: leading,
                leadingSpace: leadingSpace,
              ),
              if (ios)
                _ListAppleStyleTitle(
                  title: title,
                  subTitle: subTitle,
                ),
              if (!ios)
                _ListMenuTitle(
                  title: title,
                  subTitle: subTitle,
                ),
              _ListMenuTrailing(child: trailing),
            ],
          ),
        ),
      ),
    );
  }
}

class _ListMenuLeading extends StatelessWidget {
  final Widget? child;
  final double leadingSpace;

  const _ListMenuLeading({
    this.child,
    this.leadingSpace = 30,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: const EdgeInsets.symmetric(horizontal: 15),
      child: child != null
          ? SizedBox(
              width: leadingSpace,
              child: child,
            )
          : SizedBox(width: leadingSpace),
    );
  }
}

class _ListMenuTitle extends StatelessWidget {
  final Widget title;
  final Widget? subTitle;

  const _ListMenuTitle({
    required this.title,
    this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          title,
          subTitle ?? Container(),
        ],
      ),
    );
  }
}

class _ListMenuTrailing extends StatelessWidget {
  final Widget? child;
  final bool hide;

  const _ListMenuTrailing({
    this.child,
    this.hide = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 15),
      child: child ??
          Icon(
            Icons.arrow_forward_ios,
          ),
    );
  }
}

class _ListAppleStyleTitle extends StatelessWidget {
  const _ListAppleStyleTitle({
    required this.title,
    this.subTitle,
  });

  final Widget title;
  final Widget? subTitle;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Expanded(
            child: title,
          ),
          if (subTitle != null)
            const SizedBox(
              width: 15,
            ),
          subTitle ?? Container(),
        ],
      ),
    );
  }
}
