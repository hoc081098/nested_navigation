import 'package:flutter/material.dart';
import 'package:nested_navigation/app_scaffold.dart';
import 'package:nested_navigation/tabs/home/home_detail_page.dart';
import 'package:nested_navigation/tabs/home/home_page.dart';
import 'package:nested_navigation/tabs/notifications/notifications_page.dart';
import 'package:nested_navigation/tabs/profile/profile_edit_page.dart';
import 'package:nested_navigation/tabs/profile/profile_page.dart';
import 'package:nested_navigation/tabs/search/search_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter nested navigation',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  static final homeRoutes = <String, AppScaffoldWidgetBuilder>{
    Navigator.defaultRouteName: (context, settings) => HomePage(),
    '/home/detail': (context, settings) =>
        HomeDetailPage(index: settings.arguments as int),
  };

  static final profileRoutes = <String, AppScaffoldWidgetBuilder>{
    Navigator.defaultRouteName: (context, settings) => ProfilePage(),
    '/profile/edit': (context, settings) => ProfileEditPage(),
  };

  const MainPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      builders: [
        (context, settings) => homeRoutes[settings.name](context, settings),
        (context, settings) => SearchPage(),
        (context, settings) => NotificationsPage(),
        (context, settings) => profileRoutes[settings.name](context, settings),
      ],
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text('Home'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          title: Text('Search'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications),
          title: Text('Notifications'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          title: Text('Profile'),
        ),
      ],
    );
  }
}
