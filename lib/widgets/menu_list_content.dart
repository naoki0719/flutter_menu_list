import 'dart:io';

import 'package:flutter/material.dart';

class MenuListContent extends StatelessWidget {
  const MenuListContent({
    Key? key,
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
  }) : super(key: key);

  /// Widget on the left.
  final Widget? leading;

  /// Title of the menu.
  final Widget title;

  /// Sub title of the menu.
  /// iOS: Placed on the right side
  /// Android: Placed on the bottom
  final Widget? subTitle;

  /// Widget on the right.
  /// Default: [Icon(Icons.arrow_forward_ios)]
  final Widget trailing;

  /// Function when tapping the menu.
  final void Function()? onTap;

  /// Padding of the Widget.
  final EdgeInsetsGeometry padding;

  /// Space for reading to be maintained.
  /// Maintains this space even when not specified.
  final double leadingSpace;

  /// (WIP) Switch the menu style according to iOS or Android.
  final bool? iosStyle;

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
  const _ListMenuLeading({
    this.child,
    this.leadingSpace = 30,
  });

  final Widget? child;
  final double leadingSpace;

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
  const _ListMenuTitle({
    required this.title,
    this.subTitle,
  });

  final Widget title;
  final Widget? subTitle;

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
  const _ListMenuTrailing({
    this.child,
    this.hide = false,
  });

  final Widget? child;
  final bool hide;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 15),
      child: child ??
          const Icon(
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
