import 'package:flutter/material.dart';
import 'package:the_word/colors.dart';

class WelcomePage extends StatelessWidget {
  Widget _startButton(BuildContext context) {
    return new Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
      child: RaisedButton(
        padding: EdgeInsets.all(10.0),
        child: Text(
          'START READING',
          style: TextStyle(color: Colors.white),
        ),
        color: kPrimaryColor,
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
      padding: EdgeInsets.all(10.0),
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
      decoration: BoxDecoration(
        // border: Border.all(
        //   color: Colors.black45,
        //   width: 2.0,
        // ),
        borderRadius: BorderRadius.all(Radius.circular(1.0)),
      ),
      child: Text(
        'The Bible',
        style: TextStyle(
            color: kPrimaryColor,
            fontSize: 45.0,
            fontFamily: 'Rubik',
            fontWeight: FontWeight.w100),
        textAlign: TextAlign.end,
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
