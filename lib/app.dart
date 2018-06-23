import 'package:flutter/material.dart';

import 'backdrop.dart';
import 'home.dart';
import 'welcome.dart';
import 'colors.dart';
import 'model/chapter.dart';
import 'model/verse.dart';

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
  // FIXME: generate default
  var defaultChapter = Chapter(
      bookId: "Ezra",
      bookName: "Ezra",
      bookOrder: "15",
      chapterId: "7",
      chapterTitle: "Chapter 7",
      verses: <Verse>[]);

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'The Word',
      home: Backdrop(
        currentChapter: defaultChapter,
        frontLayer: HomePage(),
        backLayer: Container(
          color: kPrimaryColor,
        ),
        frontTitle: Text('FRONT'),
        backTitle: Text('MENU'),
      ),
      initialRoute: '/welcome',
      onGenerateRoute: widget._getRoute,
      theme: _kTheWordTheme,
    );
  }
}

final ThemeData _kTheWordTheme = _buildTheWordTheme();

ThemeData _buildTheWordTheme() {
  final ThemeData base = ThemeData.light();

  return base.copyWith(
    accentColor: kPrimaryColor,
    primaryColor: kPrimaryColor,
    buttonColor: kPrimaryColor,
    scaffoldBackgroundColor: kSurfaceWhite,
    cardColor: kPrimaryColor,
    textSelectionColor: kPrimaryColor,
    errorColor: kPrimaryColor,
    textTheme: _buildTheWordTextTheme(base.textTheme),
    primaryTextTheme: _buildTheWordTextTheme(base.primaryTextTheme),
    accentTextTheme: _buildTheWordTextTheme(base.accentTextTheme),
  );
}

TextTheme _buildTheWordTextTheme(TextTheme base) {
  return base
      .copyWith(
        headline: base.headline.copyWith(
          fontWeight: FontWeight.w500,
        ),
        title: base.title.copyWith(fontSize: 18.0),
        caption: base.caption.copyWith(
          fontWeight: FontWeight.w400,
          fontSize: 14.0,
        ),
      )
      .apply(
        fontFamily: 'Rubik',
        displayColor: kPrimaryTextHigh,
        bodyColor: kPrimaryTextHigh,
      );
}
