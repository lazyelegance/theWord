import 'package:flutter/material.dart';

import 'backdrop.dart';
import 'home.dart';
import 'indexmenu.dart';
import 'welcome.dart';
import 'colors.dart';
import 'model/book.dart';
import 'fixtures/bookdata.dart';

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
  Book _currentBook = Book(
      damId: "ENGKJVO",
      bookId: "Ezra",
      bookName: "Ezra",
      bookOrder: 15,
      numberOfChapters: 10);

  int _currentChapter = 7;

  void _onBookTap(Book book) {
    setState(() {
      _currentBook = book;
      _currentChapter = 1;
    });
  }

  void _onChapterTap(int chapter) {
    setState(() {
      _currentChapter = chapter;
    });
  }

  void _goToNextChapter() {
    var nextChapterExists = _currentBook.isValidChapter(_currentChapter + 1);

    if (nextChapterExists) {
      setState(() {
        _currentChapter = _currentChapter + 1;
      });
    } else {
      setState(() {
        _currentBook = getNextBook(_currentBook.bookOrder);
        _currentChapter = 1;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'The Word',
      home: Backdrop(
        currentBook: _currentBook,
        currentChapter: _currentChapter.toString(),
        frontLayer: HomePage(
          bookId: _currentBook.bookId,
          damId: _currentBook.damId,
          chapterId: _currentChapter.toString(),
        ),
        backLayer: ChapterSelectMenu(
          currentBook: _currentBook,
          currentChapter: _currentChapter,
          onBookTap: _onBookTap,
          onChapterTap: _onChapterTap,
        ),
        frontTitle: RichText(
          text: TextSpan(
            children: <TextSpan>[
              TextSpan(
                  text: '${_currentBook.bookName}',
                  style: _kTheWordTheme.primaryTextTheme.headline),
              TextSpan(text: ' '),
              TextSpan(
                  text: 'Chapter ${_currentChapter.toString()}',
                  style: _kTheWordTheme.primaryTextTheme.caption),
            ],
          ),
        ),
        backTitle: Text('Books'),
        onPressNext: _goToNextChapter,
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
        headline:
            base.headline.copyWith(fontWeight: FontWeight.w500, fontSize: 16.0),
        title: base.title.copyWith(fontSize: 16.0),
        caption: base.caption.copyWith(
          fontWeight: FontWeight.w400,
          fontSize: 14.0,
        ),
        body2: base.body2.copyWith(
          fontWeight: FontWeight.w500,
          fontSize: 16.0,
        ),
      )
      .apply(
        fontFamily: 'Rubik',
        displayColor: kPrimaryTextHigh,
        bodyColor: kPrimaryTextHigh,
      );
}
