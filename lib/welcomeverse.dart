import 'package:flutter/material.dart';

import 'service/dbt.dart';
import 'model/book.dart';
import 'model/verse.dart';
import 'fixtures/bookdata.dart';
import 'colors.dart';

class WelcomeVerse extends StatelessWidget {
  Widget _buildWelcomeVerse(BuildContext context, Verse welcomeVerse) {
    return Container(
      margin: EdgeInsets.all(10.0),
      padding: EdgeInsets.all(10.0),
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Text(
                  welcomeVerse.verseText,
                  style: TextStyle(color: kPrimaryColor, fontSize: 20.0),
                  textAlign: TextAlign.end,
                ),
                RichText(
                  textAlign: TextAlign.end,
                  text: TextSpan(children: [
                    TextSpan(
                      text: welcomeVerse.bookName.toString(),
                      style: TextStyle(
                          color: kPrimaryColor,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text: ' ',
                      style: TextStyle(color: kPrimaryColor, fontSize: 20.0),
                    ),
                    TextSpan(
                      text:
                          '${welcomeVerse.chapterId.toString()}:${welcomeVerse.verseId.toString()}',
                      style: TextStyle(color: kPrimaryColor, fontSize: 20.0),
                    ),
                  ]),
                ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              new Padding(
                padding: const EdgeInsets.all(8.0),
                child: RaisedButton(
                  padding: EdgeInsets.all(8.0),
                  elevation: 0.0,
                  color: kPrimaryColor,
                  textColor: kSurfaceWhite,
                  child: Text(
                      'Read more from ${welcomeVerse.bookName} Chapter ${welcomeVerse.chapterId}'),
                  onPressed: () {
                    Navigator.pop(context, welcomeVerse);
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Book welcomeBook = getBookForWelcome();
    return Container(
      child: Center(
        child: FutureBuilder(
          future: fetchVerseFromChapter(welcomeBook.bookId, welcomeBook.damId,
              welcomeBook.getRandomChapter().toString()),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return _buildWelcomeVerse(context, snapshot.data);
            } else if (snapshot.hasError) {
              return Text("${snapshot.error}");
            }
            return new CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
