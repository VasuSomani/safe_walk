import 'package:flutter/material.dart';
import 'package:safe_walk/newLoginPage.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: newLoginPage());
  }
}
