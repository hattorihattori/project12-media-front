import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  String? text;
  LoginPage(this.text);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('KBOYのFlutter大学'),
      ),
      body: Container(
        color: Colors.red,
      ),
    );
  }
}