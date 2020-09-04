import 'package:flutter/material.dart';
import 'package:nested_navigation/app_scaffold.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Profile page'),
            RaisedButton(
              onPressed: () =>
                  AppScaffold.of(context).pushNamed('/profile/edit'),
              child: Text('Tap me'),
            )
          ],
        ),
      ),
    );
  }
}
