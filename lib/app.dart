import 'package:flutter/material.dart';

class TheWordApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: new ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or press Run > Flutter Hot Reload in IntelliJ). Notice that the
        // counter didn't reset back to zero; the application is not restarted.
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
