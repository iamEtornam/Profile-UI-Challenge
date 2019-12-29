import 'package:flutter/material.dart';

import 'custom_colors.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UI',
      theme: ThemeData(
          brightness: Brightness.dark, scaffoldBackgroundColor: Colors.white),
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 200,
              width: MediaQuery
                  .of(context)
                  .size
                  .width,
              padding: const EdgeInsets.fromLTRB(16, 36, 16, 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(25),
                      bottomRight: Radius.circular(25)),
                  gradient: LinearGradient(
                      colors: color,
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight)),
              child: Column(
                children: <Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(
                          Icons.chevron_left,
                          color: Colors.white,
                        ),
                        onPressed: null,
                      ),
                      Text(
                        'MY PROFILE',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.more_vert,
                          color: Colors.white,
                        ),
                        onPressed: null,
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 70,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('12k',
                            style: TextStyle(
                              color: Colors.black,
                            )),
                        Text('FOLLOWING',
                            style: TextStyle(color: Colors.black)),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('32k',
                            style: TextStyle(
                              color: Colors.black,
                            )),
                        Text('FOLLOWERS',
                            style: TextStyle(color: Colors.black)),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: MediaQuery
                  .of(context)
                  .size
                  .width,
              height: MediaQuery
                  .of(context)
                  .size
                  .height,
              padding: const EdgeInsets.fromLTRB(16, 36, 16, 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25)),
                  gradient: LinearGradient(
                      colors: color,
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'ATATA RAHEEMAT MOJOSOLA',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 20),
                  ),
                  Text(
                    'PRODUCT DESIGNER',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 20),
                  ),
                  Text(
                    'JOINED 15TH DECEMBER 2019',
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                        fontSize: 16),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(10, 15, 10, 10),
                    width: MediaQuery
                        .of(context)
                        .size
                        .width,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'BIO',
                          style: TextStyle(fontSize: 18, color: Colors.grey),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          '''Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc malesuada sapien massa, vel porta justo elementum non. Nullam gravida orci ac mollis aliquam. Sed aliquam non libero eget pretium. Nulla facilisi. Quisque tincidunt elit id dictum lobortis. Fusce pretium lacus in ultrices scelerisque.''',
                          softWrap: true,
                          style: TextStyle(fontSize: 17, color: Colors.black),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(10, 15, 10, 10),
                    width: MediaQuery
                        .of(context)
                        .size
                        .width,
                    height: 200,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15)),
                    child: DefaultTabController(
                      length: 3,
                      child: Scaffold(
                        appBar: PreferredSize(
                          preferredSize: Size.fromHeight(kToolbarHeight),
                          child: TabBar(
                            indicatorColor: tabIndicatorColor,
                            unselectedLabelColor: Colors.green,
                            tabs: [
                              Tab(
                                child: Text(
                                  '115 POSTS',
                                  style: TextStyle(color: Colors.black),
                                ),
                              ),
                              Tab(
                                  child: Text('LIKES',
                                      style: TextStyle(color: Colors.black))),
                              Tab(
                                child: Text(
                                  '65 MEDIA',
                                  style: TextStyle(color: Colors.black),
                                ),
                              )
                            ],
                          ),
                        ),
                        body: TabBarView(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: Row(
                                children: <Widget>[
                                  Material(
                                    borderRadius: BorderRadius.circular(90),
                                    child: FlutterLogo(
                                      size: 60,
                                    ),
                                  ),
                                  Expanded(
                                    child: ListTile(
                                      title: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Text('ATATA RAHEEMAT',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 18)),
                                          Text('22/06/2019',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 14))
                                        ],
                                      ),
                                      subtitle: Padding(
                                        padding:
                                        const EdgeInsets.only(top: 8.0),
                                        child: Text(
                                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc malesuada sapien massa, vel porta justo elementum non.',
                                          style: TextStyle(color: Colors.black),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Icon(Icons.directions_transit),
                            Icon(Icons.directions_bike),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
