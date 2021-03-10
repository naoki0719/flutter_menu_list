# flutter_menu_list

A widget that provides a simple menu list.

<img src="https://raw.githubusercontent.com/naoki0719/flutter_menu_list/master/resources/example.png" />

## Features

- iOS like menu list display
- Support for dark themes

## Usage

### Simple

```dart
import 'package:flutter_menu_list/flutter_menu_list.dart';

MenuListContainer(
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
);
```

### In Column

```dart
Column(
  children: [
    Container(
      padding: const EdgeInsets.all(10),
      child: const Text(
        'Example App',
        style: TextStyle(
          fontSize: 20,
        ),
      ),
    ),
    /// Wrapping it up is important.
    const Expanded(
      child: MenuListContainer(
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
  ],
);
```

## Customizing the theme

```dart
// You can customize the default theme with copyWith
final customeLightTheme = MenuListThemes.lightTheme.copyWith();
final customeDarkTheme = MenuListThemes.darkTheme.copyWith();

// You can also customize it with your own theme.
final customizedTheme = ThemeData(
  // background color
  backgroundColor: Colors.white,
  // menu list content background color
  primaryColor: Colors.grey,
  textTheme: TextTheme(
    // [Text] Widget Styles
    bodyText1: TextStyle(),
    // Android subtitle style [WIP]
    subtitle1: TextStyle(),
    // iOS subtitle style
    subtitle2: TextStyle(),
  ),
  // [Icon] Widget
  iconTheme: IconThemeData(),
  // Seprator line color
  dividerColor: Colors.black,
);
```

### Apply the customized theme.

```dart
MenuListContainer(
  // light theme
  theme: customizedTheme,
  // dark theme
  darkTheme: customizedTheme,
);
```
