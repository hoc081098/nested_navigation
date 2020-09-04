import 'package:flutter/material.dart';
import 'package:nested_navigation/app_scaffold.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Container(
        color: Colors.limeAccent,
        child: ListView.builder(
          itemCount: 50,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text('Home item $index'),
              onTap: () => AppScaffold.of(context).pushNamed(
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
