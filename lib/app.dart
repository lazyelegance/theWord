import 'package:flutter/material.dart';

class TheWordApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: Scaffold(
          body: Center(
        child: Text(
          'Welcome',
          style: TextStyle(
            color: Colors.indigoAccent,
            fontSize: 30.0,
          ),
        ),
      )),
    );
  }
}
