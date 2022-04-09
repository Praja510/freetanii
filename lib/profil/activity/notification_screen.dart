import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class NotificationScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _NotificationState();
}

class _NotificationState extends State<NotificationScreen>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        titleSpacing: 0,
        backgroundColor: Colors.teal[800],
        title: Text("Notifikasi"),
      ),
    );
  }
}