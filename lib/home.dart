import 'package:flutter/material.dart';
import './homeMatrix.dart';
import './menuBar.dart';

class homePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    false;
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          title: Padding(
            padding:
                const EdgeInsets.only(left: 10, top: 10, right: 10, bottom: 70),
            child: Text(
              "SafeWalk",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          toolbarHeight: 160,
          leading: Padding(
            padding:
                const EdgeInsets.only(left: 10, top: 10, right: 10, bottom: 70),
            child: IconButton(
                icon: const Icon(
                  Icons.menu_rounded,
                  size: 40,
                  color: Colors.black,
                ),
                onPressed: () {
                  null;
                }),
          ),
          actions: const [
            Padding(
              padding:
                  EdgeInsets.only(left: 10, top: 10, right: 10, bottom: 70),
              child: IconButton(
                  onPressed: null,
                  icon: Icon(Icons.notifications_active,
                      size: 40, color: Colors.black)),
            )
          ],
          elevation: 0,
          backgroundColor: Colors.white,
        ),
        body: Align(
            alignment: Alignment(0, mediaQuery.size.height * 0.0007),
            child: homeMatrix()),
      ),
    );
  }
}
