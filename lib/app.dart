import 'package:flutter/material.dart';

import 'home.dart';
import 'welcome.dart';

class TheWordApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  TheWordAppState createState() {
    return new TheWordAppState();
  }

  Route<dynamic> _getRoute(RouteSettings settings) {
    if (settings.name != '/welcome') {
      return null;
    }

    return MaterialPageRoute<void>(
      settings: settings,
      builder: (BuildContext context) => WelcomePage(),
      fullscreenDialog: true,
    );
  }
}

class TheWordAppState extends State<TheWordApp> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'The Word',
      home: HomePage(),
      initialRoute: '/welcome',
      onGenerateRoute: widget._getRoute,
    );
  }
}
