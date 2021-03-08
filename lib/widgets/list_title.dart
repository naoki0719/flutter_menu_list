import 'package:flutter/material.dart';

class ListTitle extends StatelessWidget {
  const ListTitle();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: 16.0,
        bottom: 6.0,
      ),
      child: Text('Title'),
    );
  }
}
