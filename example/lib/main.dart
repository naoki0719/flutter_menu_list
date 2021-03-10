import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_menu_list/flutter_menu_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      darkTheme: ThemeData.dark(),
      home: const Example(),
    );
  }
}

class Example extends StatelessWidget {
  const Example({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Menu List'),
      ),
      drawer: Drawer(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              color: Theme.of(context).backgroundColor,
              padding: const EdgeInsets.all(20),
              child: const SafeArea(
                child: Center(
                  child: Text('Test'),
                ),
                bottom: false,
              ),
            ),
            const Divider(
              height: 0,
              color: Color(0xFFEEEEEE),
            ),
            Expanded(
              child: MediaQuery.removePadding(
                context: context,
                removeTop: true,
                child: const MenuListContainer(
                  sections: [
                    MenuListSection(
                      title: MenuListSectionTitle(title: 'Drawer Menu'),
                      menus: [
                        MenuListContent(
                          title: Text('Title'),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      ),
      body: MenuListContainer(
        sections: [
          MenuListSection(
            title: const MenuListSectionTitle(title: 'First Title'),
            menus: [
              MenuListContent(
                leading: const Icon(
                  Icons.ac_unit,
                  color: Colors.white,
                  size: 20,
                ),
                title: const Text('Title1'),
                onTap: () {},
              ),
              MenuListContent(
                title: const Text('Title2'),
                onTap: () {},
              ),
            ],
          ),
          MenuListSection(
            title: const MenuListSectionTitle(title: 'Second Title'),
            menus: [
              MenuListContent(
                title: const Text('Display of very long titles'),
                subTitle:
                    const MenuListSubTitle('Display of very long sub titles'),
                onTap: () {},
              ),
              MenuListContent(
                title: const Text('Title4'),
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
            title: const MenuListSectionTitle(
              title: 'Third Title',
              padding: EdgeInsets.only(
                left: 15,
                top: 8,
                bottom: 8,
              ),
            ),
            lineIndent: 0,
            menus: [
              MenuListContent(
                leadingSpace: 15,
                title: const Text('Display of very long titles'),
                subTitle:
                    const MenuListSubTitle('Display of very long sub titles'),
                onTap: () {},
              ),
              MenuListContent(
                leadingSpace: 15,
                title: const Text('Title4'),
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
