import 'package:flutter/material.dart';
import 'package:flutter_menu_list/flutter_menu_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Example(),
    );
  }
}

class Example extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListSection(
        title: ListTitle(),
        menus: [
          ListMenu(
            title: Text('Title'),
            onTap: () {},
          ),
          ListMenu(
            title: Text('Title'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
