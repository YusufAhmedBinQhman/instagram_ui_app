import 'package:flutter/material.dart';

class StoryWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Container(
        width: 67,
        height: 67,
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xff982282), Color(0xffeea863)]),
        ),
        child: Container(
          width: 65,
          height: 65,
          decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              boxShadow: [BoxShadow(color: Colors.grey, spreadRadius: 1)]),
          child: Padding(
            padding: EdgeInsets.all(4),
            child: Container(
              width: 65,
              height: 65,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(image: AssetImage("images/1.jpg"))),
            ),
          ),
        ),
      ),
    );
  }
}
