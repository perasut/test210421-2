import 'package:flutter/material.dart';

class BooklingScreen extends StatefulWidget {
  BooklingScreen({Key key}) : super(key: key);

  @override
  _BooklingScreenState createState() => _BooklingScreenState();
}

class _BooklingScreenState extends State<BooklingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Text('booking'),
      ),
    );
  }
}
