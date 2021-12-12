import 'package:flutter/material.dart';
import 'dart:math' as math;

class InstaHome extends StatelessWidget {
  final topBar = new AppBar();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 1.0,
        leading: IconTheme(
          data: IconThemeData(
            color: Colors.black,
            size: 38,
          ),
          child: Icon(Icons.camera_alt),
        ),
        title: SizedBox(
          height: 50.0,
          child: Image.asset('assets/images/insta_logo.png'),
        ),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 12.0),
            child: Transform.rotate(
              angle: 300 * math.pi / 180,
              child: IconTheme(
                data: IconThemeData(
                  color: Colors.black,
                  size: 38,
                ),
                child: Icon(Icons.send),
              ),
            ),
          )
        ],
      ),
      body: Container(),
      bottomNavigationBar: Container(
          color: Colors.white,
          height: 70,
          child: BottomAppBar(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: IconTheme(
                      data: IconThemeData(
                        color: Colors.black,
                        size: 38,
                      ),
                      child: Icon(Icons.home),
                    )),
                IconButton(
                    onPressed: () {},
                    icon: IconTheme(
                      data: IconThemeData(
                        color: Colors.black,
                        size: 38,
                      ),
                      child: Icon(Icons.search),
                    )),
                IconButton(
                    onPressed: () {},
                    icon: IconTheme(
                      data: IconThemeData(
                        color: Colors.black,
                        size: 38,
                      ),
                      child: Icon(Icons.add_box),
                    )),
                IconButton(
                    onPressed: () {},
                    icon: IconTheme(
                      data: IconThemeData(
                        color: Colors.black,
                        size: 38,
                      ),
                      child: Icon(Icons.favorite),
                    )),
                IconButton(
                    onPressed: () {},
                    icon: IconTheme(
                      data: IconThemeData(
                        color: Colors.black,
                        size: 38,
                      ),
                      child: Icon(Icons.account_box),
                    )),
              ],
            ),
          )),
    );
  }
}
