import 'package:flutter/material.dart';
import 'package:safe_walk/alertSent.dart';
import 'package:slide_to_act/slide_to_act.dart';
import 'package:url_launcher/url_launcher.dart';
import './extension.dart';
import './panicButton.dart';
import './dangerArea.dart';
import './policeStations.dart';

class homeMatrix extends StatefulWidget {
  const homeMatrix({Key? key}) : super(key: key);

  @override
  State<homeMatrix> createState() => _homeMatrixState();
}

class _homeMatrixState extends State<homeMatrix> {
  @override
  Widget build(BuildContext context) {
    final GlobalKey<SlideActionState> _key = GlobalKey();
    return Container(
      alignment: Alignment.bottomCenter,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25), topRight: Radius.circular(25)),
          color: '#47082A'.toColor()),
      child: Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Builder(
                  builder: (context) {
                    final GlobalKey<SlideActionState> _key = GlobalKey();
                    return Padding(
                        padding: const EdgeInsets.all(15),
                        child: SlideAction(
                            borderRadius: 25,
                            height: 74,
                            sliderRotate: false,
                            innerColor: Colors.black,
                            sliderButtonIcon: Icon(
                              Icons.local_police_rounded,
                              color: Colors.white,
                              size: 28,
                            ),
                            outerColor: Colors.white,
                            text: "POLICE STATIONS",
                            animationDuration: const Duration(milliseconds: 10),
                            key: _key,
                            onSubmit: () {
                              launch(
                                  'https://www.google.com/maps/search/police+stations+near+me');
                            }));
                  },
                ),
                Builder(
                  builder: (context) {
                    final GlobalKey<SlideActionState> _key = GlobalKey();
                    return Padding(
                        padding: const EdgeInsets.all(15),
                        child: SlideAction(
                          borderRadius: 25,
                          sliderRotate: false,
                          height: 74,
                          innerColor: Colors.black,
                          outerColor: Colors.white,
                          sliderButtonIcon: Icon(
                            Icons.gps_fixed_rounded,
                            size: 28,
                            color: Colors.white,
                          ),
                          text: "GPS TRACKING",
                          animationDuration: const Duration(milliseconds: 10),
                          key: _key,
                          onSubmit: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => WomenSafetyMap()));
                            Future.delayed(Duration(seconds: 1),
                                () => _key.currentState?.reset());
                          },
                        ));
                  },
                ),
                Builder(
                  builder: (context) {
                    final GlobalKey<SlideActionState> _key = GlobalKey();
                    return Padding(
                        padding: const EdgeInsets.all(15),
                        child: SlideAction(
                          borderRadius: 25,
                          reversed: true,
                          height: 74,
                          sliderRotate: false,
                          sliderButtonIcon: Icon(
                            Icons.woman_sharp,
                            size: 32,
                            color: Colors.white,
                          ),
                          innerColor: Colors.black,
                          outerColor: Colors.white,
                          text: "WALK WITH ME",
                          animationDuration: const Duration(milliseconds: 10),
                          key: _key,
                          onSubmit: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const alertSent()));
                            Future.delayed(Duration(seconds: 1),
                                () => _key.currentState?.reset());
                          },
                        ));
                  },
                ),
                Builder(
                  builder: (context) {
                    final GlobalKey<SlideActionState> _key = GlobalKey();
                    return Padding(
                        padding: const EdgeInsets.all(15),
                        child: SlideAction(
                          borderRadius: 25,
                          reversed: true,
                          height: 74,
                          sliderRotate: false,
                          sliderButtonIcon: Icon(
                            Icons.add_alert_rounded,
                            size: 30,
                            color: Colors.white,
                          ),
                          innerColor: Colors.black,
                          outerColor: Colors.white,
                          text: "CRIME ALERTS",
                          animationDuration: const Duration(milliseconds: 10),
                          key: _key,
                          onSubmit: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => WomenSafetyMap()));
                            Future.delayed(Duration(seconds: 1),
                                () => _key.currentState?.reset());
                          },
                        ));
                  },
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: const panicButton(),
            ),
          ],
        ),
      ),
    );
  }
}
