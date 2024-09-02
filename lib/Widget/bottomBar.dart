import 'package:flutter/material.dart';

class BottomBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        iconSize: 35,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "search"),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_box_outlined), label: "Reels"),
          BottomNavigationBarItem(
              icon: Image.asset(
                "images/reels.png",
                height: 30,
                width: 30,
                color: Colors.grey[700],
              ),
              label: "search"),
          BottomNavigationBarItem(
              icon:
                  CircleAvatar(backgroundImage: AssetImage("images/yusuf.jpg")),
              label: "user"),
        ]);
  }
}
