import 'package:flutter/material.dart';

class SecurityScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SecurityState();
}

class _SecurityState extends State<SecurityScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        titleSpacing: 0,
        backgroundColor: Colors.teal[800],
        title: Text("Keamanan"),
      ),
    );
  }
}