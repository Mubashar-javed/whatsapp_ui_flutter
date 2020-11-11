import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
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
                  // child: Text("Home"),
                  icon: Icon(Icons.camera_alt),
                ),
                Tab(
                  child: Text("CHATS"),
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
            FloatingActionButton(
              onPressed: () {},
              backgroundColor: Color.fromRGBO(37, 211, 102, 1),
              splashColor: Colors.white,
              child: Icon(Icons.message),
            )
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
  @override
  Widget build(BuildContext context) {
    return AddSomeText(
      text: "Chat Screen",
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
