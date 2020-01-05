import 'package:flutter/material.dart';
import 'package:ui_challenge/chat_list_page.dart';
import 'package:ui_challenge/profile_page.dart';

import 'custom_colors.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UI',
      theme: ThemeData(
          brightness: Brightness.light, scaffoldBackgroundColor: Colors.white),
      home: UiViewSelectPage(),
    );
  }
}

class UiViewSelectPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: <Widget>[
          FlatButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfilePage()),
                );
              },
              child: Text('To Profile UI')),
          FlatButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => ChatListPage()),
                );
              },
              child: Text('To Chat UI'))
        ],
      ),
    );
  }
}
