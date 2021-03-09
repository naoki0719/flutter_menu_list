import 'package:flutter/cupertino.dart';
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
      theme: ThemeData(primarySwatch: Colors.blue),
      darkTheme: ThemeData.dark(),
      home: Example(),
    );
  }
}

class Example extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MenuListContainer(
        sections: [
          MenuListSection(
            title: MenuListSectionTitle(title: 'First Title'),
            menus: [
              MenuListContent(
                leading: Icon(
                  Icons.ac_unit,
                  color: Colors.white,
                  size: 20,
                ),
                title: Text('Title1'),
                onTap: () {},
              ),
              MenuListContent(
                title: Text('Title2'),
                onTap: () {},
              ),
            ],
          ),
          MenuListSection(
            title: MenuListSectionTitle(title: 'Second Title'),
            menus: [
              MenuListContent(
                title: Text('Display of very long titles'),
                subTitle: MenuListSubTitle('Display of very long sub titles'),
                onTap: () {},
              ),
              MenuListContent(
                title: Text('Title4'),
                trailing: SizedBox(
                  height: 20,
                  child: CupertinoSwitch(
                    value: true,
                    onChanged: (value) {},
                  ),
                ),
              ),
            ],
          ),
          MenuListSection(
            title: MenuListSectionTitle(
              title: 'Third Title',
              padding: const EdgeInsets.only(
                left: 15,
                top: 8,
                bottom: 8,
              ),
            ),
            lineIndent: 0,
            menus: [
              MenuListContent(
                leadingSpace: 15,
                title: Text('Display of very long titles'),
                subTitle: MenuListSubTitle('Display of very long sub titles'),
                onTap: () {},
              ),
              MenuListContent(
                leadingSpace: 15,
                title: Text('Title4'),
                trailing: SizedBox(
                  height: 20,
                  child: CupertinoSwitch(
                    value: true,
                    onChanged: (value) {},
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
