import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Center(
        child: RaisedButton(
          elevation: 8.0,
          color: Colors.indigoAccent,
          textColor: Colors.white,
          child: Text('ENTER'),
          onPressed: () {
            Navigator.pop(context);
          },
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(3.0)),
          ),
        ),
      ),
    );
  }
}
