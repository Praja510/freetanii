import 'package:flutter/material.dart';

class AccountBank extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _AccountBankState();
}

class _AccountBankState extends State<AccountBank> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        titleSpacing: 0,
        backgroundColor: Colors.teal[800],
        title: Text("Rekening Bank"),
      ),
    );
  }
}
