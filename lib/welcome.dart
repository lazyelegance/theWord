import 'package:flutter/material.dart';

import 'colors.dart';

class WelcomePage extends StatelessWidget {
  Widget _startButton(BuildContext context) {
    return new Padding(
      padding: const EdgeInsets.all(8.0),
      child: FlatButton(
        padding: EdgeInsets.all(10.0),
        color: kSurfaceWhite,
        textColor: Colors.black,
        child: Text('START READING'),
        onPressed: () {
          Navigator.pop(context);
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(1.0)),
        ),
      ),
    );
  }

  Widget _buildContent(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[_buildTitle(), _startButton(context)],
          ),
        ],
      ),
    );
  }

  Widget _buildTitle() {
    return Container(
      padding: EdgeInsets.all(10.0),
      margin: EdgeInsets.only(right: 10.0),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black45,
          width: 2.0,
        ),
        borderRadius: BorderRadius.all(Radius.circular(1.0)),
      ),
      child: SizedBox(
        height: 180.0,
        width: 180.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Text(
              'The Bible',
              style: TextStyle(
                  color: Colors.black87,
                  fontSize: 45.0,
                  fontFamily: 'Rubik',
                  fontWeight: FontWeight.w100),
              textAlign: TextAlign.end,
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Center(
        child: _buildContent(context),
      ),
    );
  }
}
