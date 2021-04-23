import 'package:flutter/material.dart';
import 'package:test210421/routers.dart';
import 'package:test210421/themes/style.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MyStyle().appTheme(),
      initialRoute: '/welcome',
      routes: routes,
    );
  }
}
