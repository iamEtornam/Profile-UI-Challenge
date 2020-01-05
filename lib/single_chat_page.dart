import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'custom_colors.dart';

class SingleChatPage extends StatelessWidget {
  final chatData;

  const SingleChatPage({Key key, @required this.chatData}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    List chatSnapshot = [
      [true, 'What up'],
      [true, 'How was your day'],
      [false, 'Hey babe'],
    ];

    return Scaffold(
      backgroundColor: chatScaffoldBg,
      body: Column(
        children: <Widget>[
          CupertinoNavigationBar(
            backgroundColor: chatScaffoldBg,
            actionsForegroundColor: chatAccentColor,
            previousPageTitle: 'Chats',
            trailing: Image.asset('${chatData[0]}'),
            middle: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  '${chatData[1]}',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                Text(
                  'Online',
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                ),
              ],
            ),
          ),
   Expanded(
        child: ListView.builder(
                  padding: const EdgeInsets.all(10),
                  reverse: true,
                  itemCount: chatSnapshot.length,
                  itemBuilder: (context, index) {
                    return Material(
                        color: chatScaffoldBg,
                        child: singleChatLayout(chatSnapshot, index));
                  }),
   ),
        ],
      ),
      bottomNavigationBar: Container(
        margin: const EdgeInsets.only(bottom: 15),
        height:70,child: chatEnvironment(),),
    );
  }

InputDecoration textBoxDecoration(String label) {
    return InputDecoration(
        labelText: label,
        alignLabelWithHint: true,
        hintStyle: TextStyle(color: Colors.red),
        contentPadding: EdgeInsets.all(13.0),
        hasFloatingPlaceholder: true,
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: chatAccentColor),
            borderRadius: BorderRadius.all(Radius.circular(45))),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: chatAccentColor),
          borderRadius: BorderRadius.all(Radius.circular(45))
        ),
        errorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red),
            borderRadius: BorderRadius.all(Radius.circular(45))),
        disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black.withOpacity(.5)),
            borderRadius: BorderRadius.all(Radius.circular(45))),
        focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red),
            borderRadius: BorderRadius.all(Radius.circular(45))),
        fillColor: searchBgColor,
        filled: true,
        labelStyle:
            TextStyle(color: Colors.white12, fontWeight: FontWeight.w600),
        errorStyle: TextStyle(
          color: Colors.red,
        ),
        suffixIcon: Icon(
          Icons.photo_library,
          color: Colors.white12,
        ));
  }

 Widget chatEnvironment() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      child:  Row(
        children: <Widget>[
          IconButton(
            icon: Icon(
              Icons.import_export,
              color: Colors.grey,
            ),
            onPressed: null,
          ),
           Flexible(
            child: TextField(
              decoration:
                  textBoxDecoration('Message'),
              onSubmitted: null,
            ),
          ),
          IconButton(
            icon: Icon(
              Icons.mic,
              color: Colors.grey,
            ),
            onPressed: null,
          )
        ],
      ),
    );
  }


  Widget singleChatLayout(List mSnapshot, int index) {
    bool isMe = mSnapshot[index][0];
    final bg = chatAccentColor;
    final align = isMe ? WrapAlignment.end : WrapAlignment.start;
    final radius = isMe
        ? BorderRadius.only(
            topRight: Radius.circular(5.0),
            topLeft: Radius.circular(10.0),
            bottomLeft: Radius.circular(10.0),
            bottomRight: Radius.circular(5.0),
          )
        : BorderRadius.only(
            topLeft: Radius.circular(5.0),
            topRight: Radius.circular(10.0),
            bottomLeft: Radius.circular(5.0),
            bottomRight: Radius.circular(10.0),
          );
    return Wrap(
      alignment: align,
      children: <Widget>[
        Container(
          margin: const EdgeInsets.all(3.0),
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  blurRadius: .5,
                  spreadRadius: 1.0,
                  color: Colors.black.withOpacity(.12))
            ],
            color: bg,
            borderRadius: radius,
          ),
          child: Text(
            '${mSnapshot[index][1]}',
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
        )
      ],
    );
  }
}
