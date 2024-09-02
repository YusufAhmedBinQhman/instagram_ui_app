import 'package:flutter/material.dart';

class PostWidget extends StatelessWidget {
  List<dynamic> postImage = [
    {"images": "images/f.jpg"},
    {"images": "images/omar.jpg"},
    {"images": "images/yusuf.jpg"},
    {"images": "images/1.png"},
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 2,
      itemBuilder: (BuildContext context, int index) {
        return Column(
          children: [
            ListTile(
              leading: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(),
                    image: DecorationImage(
                        image: AssetImage(
                      "images/yusuf.jpg",
                    ))),
              ),
              title: Text("a0a_ever"),
              trailing: Icon(Icons.more_vert),
            ),
            //container listView
            Container(
              height: 300,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    width: 420,
                    margin: EdgeInsets.all(10),
                    //   height: 65,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        image: DecorationImage(
                            image: AssetImage(
                              "${postImage[index]["images"]}",
                            ),
                            fit: BoxFit.cover)),
                  );

                  ///aaaa
                  // Container(
                  //   decoration: BoxDecoration(
                  //       color: Colors.cyan,
                  //       borderRadius: BorderRadius.circular(20)),
                  //   margin: EdgeInsets.all(10),
                  //   // padding: EdgeInsets.all(15),
                  //   width: 420,
                  //   child: Image.asset(
                  //     "images/f.jpg",
                  //     fit: BoxFit.cover,
                  //   ),
                  // );
                  ///aaa
                },
              ),
            ),
            /////aaaa
            // Container(
            //   height: 400,
            //   width: double.infinity,
            //   decoration: BoxDecoration(
            //       image: DecorationImage(
            //           fit: BoxFit.cover, image: AssetImage("images/1.jpg"))),
            // ),
            ////aaaa
            ListTile(
              leading: Wrap(
                spacing: 5,
                children: [
                  Container(
                    width: 70,
                    child: Expanded(
                      child: Row(
                        children: [
                          Icon(
                            Icons.favorite,
                            color: Colors.red,
                            size: 30,
                          ),
                          Text(
                            "1234",
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 60,
                    child: Expanded(
                      child: Row(
                        children: [
                          Image.asset(
                            "images/chat.png",
                            width: 30,
                            height: 30,
                          ),
                          Text(
                            "245",
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 60,
                    child: Expanded(
                      child: Row(
                        children: [
                          Image.asset(
                            "images/send.png",
                            width: 30,
                            height: 30,
                          ),
                          Text(
                            "24",
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              trailing: Icon(
                Icons.bookmark_border_outlined,
                size: 35,
                color: Colors.black,
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 18),
                  child: Text("data"),
                )
              ],
            )
          ],
        );
      },
    );
  }
}
