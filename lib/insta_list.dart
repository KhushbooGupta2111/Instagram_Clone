import 'package:flutter/material.dart';
import 'package:instagram_clone/insta_story.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InstaList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) => index == 0
            ? new SizedBox(
                child: InstaStories(), height: deviceSize.height * 0.15)
            : Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(16.0, 16.0, 8.0, 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 40.0,
                          width: 40.0,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage("assets/shweta.png"))),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          "Shweta21",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const IconButton(
                          icon: Icon(Icons.more_vert),
                          onPressed: null,
                        ),
                      ],
                    ),
                  ),
                  Flexible(
                      fit: FlexFit.loose,
                      child: Image(
                        image: AssetImage("assets/shweta.png"),
                        fit: BoxFit.cover,
                      )),
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          FontAwesomeIcons.comment,
                        ),
                        SizedBox(
                          width: 16.0,
                        ),
                        Icon(
                          FontAwesomeIcons.paperPlane,
                        ),
                        SizedBox(
                          width: 16.0,
                        ),
                        Icon(
                          FontAwesomeIcons.bookmark,
                        ),
                      ],
                    ),
                  ),
                  Padding(

                  )
                  Padding(
                    padding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: 40.0,
                          width: 40.0,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage("assets/shweta.png"))),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Expanded(
                            child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Add a comment...",
                          ),
                        )),
                      ],
                    ),
                  )
                ],
              ));
  }
}
