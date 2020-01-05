import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'custom_colors.dart';
import 'single_chat_page.dart';

class ChatListPage extends StatefulWidget {
  @override
  _ChatListPageState createState() => _ChatListPageState();
}

class _ChatListPageState extends State<ChatListPage> {
  final searchTextController = TextEditingController();
  var chatData = [
    [
      'assets/images/person_1.jpg',
      'Tammy (dev)',
      'Don\'t forget to bring your assignment tomorrow',
      '10:06',
      1
    ],
    ['assets/images/person_2.jpg', 'Alexendra', 'How was your day', '10:06', 0],
    [
      'assets/images/person_3.jpg',
      'Faydee',
      'Don\'t forget to bring your assignment tomorrow',
      '10:06',
      1
    ],
    [
      'assets/images/person_4.jpg',
      'Sweet Sis',
      'Don\'t forget to bring your assignment tomorrow',
      '10:06',
      0
    ],
    [
      'assets/images/person_5.jpg',
      'OTA (new)',
      'Don\'t forget to bring your assignment tomorrow',
      '10:06',
      1
    ],
    [
      'assets/images/person_2.jpg',
      'Dare',
      'Don\'t forget to bring your assignment tomorrow',
      '10:06',
      0
    ],
    [
      'assets/images/person_1.jpg',
      'Cyril Uket',
      'Don\'t forget to bring your assignment tomorrow',
      '10:06',
      0
    ],
    [
      'assets/images/person_3.jpg',
      'Chiziaruhoma',
      'Don\'t forget to bring your assignment tomorrow',
      '10:06',
      1
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: chatScaffoldBg,
      appBar: customHeader(),
      body: ListView.separated(
          separatorBuilder: (context, index) {
            return Divider(
              color: Colors.grey,
            );
          },
          itemCount: chatData.length,
          itemBuilder: (BuildContext context, int index) {
            return buildChatListTile(
                chatData[index][0],
                chatData[index][1],
                chatData[index][2],
                chatData[index][3],
                chatData[index][4],
                chatData[index]);
          }),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: searchBgColor,
          currentIndex: 0,
          selectedItemColor: chatAccentColor,
          unselectedItemColor: Colors.grey,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.comment),
                title: Text('Chats'),
                backgroundColor: searchBgColor),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle),
                title: Text('Contacts'),
                backgroundColor: searchBgColor),
            BottomNavigationBarItem(
                icon: Icon(Icons.call),
                title: Text('Calls'),
                backgroundColor: searchBgColor),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                title: Text('Settings'),
                backgroundColor: searchBgColor),
          ]),
    );
  }

  ListTile buildChatListTile(String imagePath, String name, String message,
      String time, int count, List singleChatData) {
    return ListTile(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => SingleChatPage(chatData: singleChatData)),
        );
      },
      contentPadding: const EdgeInsets.all(5),
      leading: Image.asset(imagePath, width: 100, height: 100),
      title: Text(name,
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500)),
      subtitle: Text(message, style: TextStyle(color: Colors.white)),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(time, style: TextStyle(color: Colors.white)),
          count == 0
              ? SizedBox()
              : CircleAvatar(
                  radius: 15,
                  backgroundColor: chatAccentColor,
                  child: Text('$count', style: TextStyle(color: Colors.white)),
                )
        ],
      ),
    );
  }

  Widget customHeader() {
    return PreferredSize(
      preferredSize: Size.fromHeight(200),
      child: Container(
        height: 200,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
            border: Border(bottom: BorderSide(width: .5, color: Colors.grey))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Edit',
                    style: TextStyle(color: chatAccentColor, fontSize: 18)),
                Icon(CupertinoIcons.create_solid,
                    color: chatAccentColor, size: 30),
              ],
            ),
            SizedBox(height: 10),
            Text(
              'Chats',
              style: TextStyle(
                  fontSize: 32,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            TextField(
              controller: searchTextController,
              style: TextStyle(
                color: Colors.black,
                fontSize: 16.0,
              ),
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.emailAddress,
              textCapitalization: TextCapitalization.none,
              maxLines: 1,
              enableInteractiveSelection: true,
              decoration: textBoxDecoration('Search'),
            )
          ],
        ),
      ),
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
            borderSide: BorderSide(color: Colors.black),
            borderRadius: BorderRadius.all(Radius.circular(5))),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: searchBgColor),
        ),
        errorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red),
            borderRadius: BorderRadius.all(Radius.circular(5))),
        disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black.withOpacity(.5)),
            borderRadius: BorderRadius.all(Radius.circular(5))),
        focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red),
            borderRadius: BorderRadius.all(Radius.circular(5))),
        fillColor: searchBgColor,
        filled: true,
        labelStyle:
            TextStyle(color: Colors.white12, fontWeight: FontWeight.w600),
        errorStyle: TextStyle(
          color: Colors.red,
        ),
        prefixIcon: Icon(
          Icons.search,
          color: Colors.white12,
        ));
  }
}
