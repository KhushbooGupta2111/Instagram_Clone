import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InstaStories extends StatelessWidget {
  //const InstaStories({Key? key}) : super(key: key);
  final topNext = Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text("Stories",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          )),
      Row(
        children: [
          Icon(Icons.play_arrow),
          Text(
            "Watch All",
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      )
    ],
  );
  final stories = Expanded(
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (context, index) => Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage("assets/shweta.png")),
                    ),
                    margin: EdgeInsets.symmetric(horizontal: 8.0),
                  ),
                  index == 0
                      ? Positioned(
                          right: 10.0,
                          child: Icon(
                            Icons.add,
                            size: 14.0,
                            color: Colors.white,
                          ))
                      : Container()
                ],
              )));
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16.0),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            topNext,
            stories,
          ]),
    );
  }
}
