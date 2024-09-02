import 'package:flutter/material.dart';
import 'package:instagram_ui_app/Widget/bottomBar.dart';
import 'package:instagram_ui_app/Widget/postWidget.dart';
import 'package:instagram_ui_app/Widget/story.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(
            Icons.camera_alt_outlined,
            size: 40,
            color: Colors.grey[600],
          ),
          titleSpacing: 3,
          title: Text(
            "Instagram",
            style: TextStyle(decoration: TextDecoration.none, fontSize: 30),
          ),
          actions: [
            IconButton(icon: Icon(Icons.search, size: 35), onPressed: () {}),
            IconButton(
                icon: Image.asset(
                  "images/chat2.png",
                  height: 30,
                  width: 30,
                ),
                onPressed: () {}),
          ],
        ),
        body: Column(
          children: [
            Divider(),
            StoryWidget(),
            Divider(
              color: Colors.grey,
            ),
            Expanded(child: PostWidget()),
          ],
        ),
        bottomNavigationBar: BottomBarWidget());
  }
}
