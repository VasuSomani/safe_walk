import 'dart:ui';

import 'package:flutter/material.dart';
import 'extension.dart';

class alertSent extends StatelessWidget {
  const alertSent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQuerry = MediaQuery.of(context);
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
      child: AlertDialog(
        actions: [
          Column(
            children: [
              Image.asset('assets/Favorites_duotone.png'),
              Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: '#47082A'.toColor(),
                    borderRadius: BorderRadius.circular(20)),
                height: mediaQuerry.size.height * 0.2,
                width: mediaQuerry.size.height * 0.4,
                child: const Padding(
                  padding: EdgeInsets.only(left: 40, right: 50),
                  child: Text(
                    "ALERT SENT TO YOUR CONTACT LIST",
                    style: TextStyle(color: Colors.white, fontSize: 28),
                  ),
                ),
              ),
            ],
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(40),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    backgroundColor: '#47082A'.toColor()),
                onPressed: () => Navigator.pop(context),
                child: const Padding(
                  padding:
                      EdgeInsets.only(top: 17, bottom: 17, left: 50, right: 50),
                  child: Text(
                    "Got It !!",
                    style: TextStyle(fontSize: 25),
                  ),
                ),
              ),
            ),
          )
        ],
        actionsAlignment: MainAxisAlignment.center,
        backgroundColor: Colors.transparent,
      ),
    );
  }
}
