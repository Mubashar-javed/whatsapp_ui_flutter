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
                    badgeContent: Text("2"),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 7, 0),
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
  final List<String> contacts = [
    "Muaaz SE",
    "Tanveer SE",
    "Haris",
    "Irtaza",
    "Qasim bhinder",
    "Mohsin",
  ];
  List<String> lastLoginList = [
    "online",
    "online",
    "11:12",
    "4:34",
    "2:12",
    "1:33",
  ];
  List<String> userMessage = [
    "great 👍",
    "kesy ho? 🤔",
    "Hi 👋👋",
    "class kis time aj?",
    "Allah Hafiz",
    "Okay!",
  ];
  List<String> profilePics = [
    "png",
    "jpg",
    "jpg",
    "jpg",
    "jpg",
    "jpg",
  ];
  final Widget onlineMessage = Text(
    "online",
    style: TextStyle(color: Color.fromRGBO(37, 211, 102, 1), fontSize: 12),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        separatorBuilder: (BuildContext context, int index) {
          return Divider(
            color: Colors.black26,
            thickness: 1,
          );
        },
        itemCount: contacts.length,
        padding: EdgeInsets.all(4),
        itemBuilder: (BuildContext context, int index) {
          print("$index.${profilePics[index]}");
          return ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.white,
              backgroundImage:
                  AssetImage("./assets/${index + 1}.${profilePics[index]}"),
              radius: 26,
            ),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                lastLoginList[index] == 'online'
                    ? onlineMessage
                    : Text(
                        "${lastLoginList[index] + ' PM'} ",
                        style: TextStyle(fontSize: 11),
                      ),
                lastLoginList[index] == 'online'
                    ? Badge(
                        badgeContent: Text(
                          "1",
                          style: TextStyle(color: Colors.white),
                        ),
                        badgeColor: Color.fromRGBO(37, 211, 102, 1),
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(6),
                      )
                    : Text(''),
              ],
            ),
            subtitle: Text(
              "${userMessage[index]}",
            ),
            title: Text(
              "${contacts[index]}",
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
