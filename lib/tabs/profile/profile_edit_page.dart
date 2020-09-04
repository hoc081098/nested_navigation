import 'package:flutter/material.dart';

class ProfileEditPage extends StatefulWidget {
  @override
  _ProfileEditPageState createState() => _ProfileEditPageState();
}

class _ProfileEditPageState extends State<ProfileEditPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile edit'),
      ),
      body: Container(
        color: Colors.blueAccent,
        child: Center(
          child: Text('Profile edit page'),
        ),
      ),
    );
  }
}
