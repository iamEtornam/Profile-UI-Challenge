import 'package:flutter/material.dart';

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
        FlatButton(onPressed: (){}, child: Text('To Profile UI')),
        FlatButton(onPressed: (){}, child: Text('To Chat UI'))

      ],
    ),
    );
  }
}