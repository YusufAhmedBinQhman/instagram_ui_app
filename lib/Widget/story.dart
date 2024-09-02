import 'package:flutter/material.dart';

class StoryWidget extends StatelessWidget {
  List<dynamic> story = [
    {"images": "images/1.jpg", "username": "Yusuf"},
    {"images": "images/omar.jpg", "username": "Omer"},
    {"images": "images/yusuf.jpg", "username": "Ali"},
    {"images": "images/man.png", "username": "man"},
    {"images": "images/1.jpg", "username": "Yusuf"},
    {"images": "images/omar.jpg", "username": "Omer"},
    {"images": "images/yusuf.jpg", "username": "Ali"},
    {"images": "images/1.jpg", "username": "Ahmed"}
  ];

  @override
  Widget build(BuildContext context) {
    return
        // Padding(
        //   padding: const EdgeInsets.all(10.0),
        //   child:
        Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List.generate(story.length, (index) {
                return Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Column(
                    children: [
                      Container(
                        width: 67,
                        height: 67,
                        padding: EdgeInsets.all(4),
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
                          //  padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(4),
                            child: Container(
                              width: 65,
                              height: 65,
                              decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey, spreadRadius: 1)
                                  ],
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image: AssetImage(
                                        "${story[index]["images"]}",
                                      ),
                                      fit: BoxFit.cover)),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text("${story[index]["username"]}"),
                      )
                    ],
                  ),
                );
              }),
            ),
          ),
        ),
      ],
    );
  }
}
