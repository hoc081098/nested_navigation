import 'package:flutter/material.dart';
import 'package:nested_navigation/app_scaffold.dart';

class NotificationsPage extends StatefulWidget {
  @override
  _NotificationsPageState createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notification'),
      ),
      body: Container(
        color: Colors.orangeAccent,
        child: ListView.builder(
          itemCount: 50,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text('Notification $index'),
              onTap: () => AppScaffold.of(context, newTabIndex: 0).pushNamed(
                '/home/detail',
                arguments: index,
              ),
            );
          },
        ),
      ),
    );
  }
}
