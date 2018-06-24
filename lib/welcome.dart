import 'package:flutter/material.dart';

import 'colors.dart';

class WelcomePage extends StatelessWidget {
  Widget _startButton(BuildContext context) {
    return new Padding(
      padding: const EdgeInsets.all(8.0),
      child: RaisedButton(
        padding: EdgeInsets.all(10.0),
        elevation: 8.0,
        color: kPrimaryColor,
        textColor: kSurfaceDark,
        child: Text('START READING'),
        onPressed: () {
          Navigator.pop(context);
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(3.0)),
        ),
      ),
    );
  }

  Widget _buildTitle(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Text(
                'The Bible',
                style: TextStyle(
                    color: kPrimaryColor,
                    fontSize: 50.0,
                    fontFamily: 'Cinzel',
                    fontWeight: FontWeight.w300),
                textAlign: TextAlign.end,
              ),
              _startButton(context)
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Center(
        child: _buildTitle(context),
      ),
    );
  }
}
