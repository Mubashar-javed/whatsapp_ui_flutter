import 'dart:math';

import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyHomePage());
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text("WhatsApp"),
            backgroundColor: Color.fromRGBO(18, 140, 126, 1),
            actions: [
              IconButton(icon: Icon(Icons.search), onPressed: () {}),
              IconButton(icon: Icon(Icons.menu), onPressed: () {}),
            ],
            bottom: TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.camera_alt),
                ),
                Tab(
                  child: Badge(
                    alignment: Alignment.topRight,
                    badgeColor: Colors.white70,
                    badgeContent: Text("3"),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text("CHATS"),
                    ),
                  ),
                ),
                Tab(
                  child: Text("STATUS"),
                ),
                Tab(
                  child: Text("CALLS"),
                )
              ],
            ),
          ),
          body: TabBarView(children: [
            CameraScreen(),
            ChatScreen(),
            StatusScreen(),
            CallScreen(),
          ]),
        ),
      ),
    );
  }
}

class AddSomeText extends StatelessWidget {
  final String text;
  AddSomeText({this.text}) : super();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

class CameraScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AddSomeText(
      text: "Camera Screen",
    );
  }
}

class ChatScreen extends StatelessWidget {
  final List<String> entries = [
    "A",
    "B",
    "C",
    "D",
    "E",
    "F",
    "A",
    "B",
    "C",
    "D",
    "E",
    "F"
  ];
  final List<int> colorCode = [
    50,
    100,
    200,
    300,
    400,
    500,
    50,
    100,
    200,
    300,
    400,
    500
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        separatorBuilder: (BuildContext context, int index) {
          return Divider(
            color: Colors.black26,
            thickness: 2,
          );
        },
        itemCount: entries.length,
        padding: EdgeInsets.all(4),
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: Image.asset("./assets/avatar.png"),
            trailing: Text("3:27 PM"),
            title: Text(
              "Haris Warriach",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          );
        },
      ),
      floatingActionButton: Transform(
        transform: Matrix4.rotationY(180 * pi / 180),
        alignment: Alignment.center,
        child: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.message),
          backgroundColor: Color.fromRGBO(37, 211, 102, 1),
        ),
      ),
    );
  }
}

class StatusScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AddSomeText(
      text: "Status Screen",
    );
  }
}

class CallScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AddSomeText(
      text: "Call Screen",
    );
  }
}
