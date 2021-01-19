import 'package:flutter/material.dart';

class inbox extends StatefulWidget {
  @override
  _inboxState createState() => _inboxState();
}

class _inboxState extends State<inbox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text("Hello Dear"),
        ),
      ),
    );
  }
}
