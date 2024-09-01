import 'package:flutter/material.dart';

class BottomBarWidget extends StatelessWidget {
  const BottomBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
        child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.black,
            // unselectedItemColor: Colors.grey,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            iconSize: 35,
            items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
          BottomNavigationBarItem(
              icon: Image.asset(
                "images/1.jpg",
                width: 30,
              ),
              label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: "add"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_outline_rounded), label: "heart"),
          BottomNavigationBarItem(
              icon: CircleAvatar(
                backgroundImage: AssetImage("images/1.jpg"),
              ),
              label: "user"),
        ]));
  }
}
