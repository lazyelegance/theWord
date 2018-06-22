import 'package:flutter/material.dart';
import 'model/verse.dart';
import 'fixtures/versedata.dart';

class HomePage extends StatelessWidget {
  final String chapter;
  final String book;

  const HomePage({this.book: 'Ezra', this.chapter: '7'});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('$book $chapter')),
      body: ListView(
        padding: EdgeInsets.only(top: 20.0),
        children: _buildListItems(book, chapter),
      ),
    );
  }

  _buildListItems(String book, String chapter) {
    List<Verse> verses = getVerses(book, chapter);

    return verses.map((verse) {
      var special = verse.special != null ? verse.special : false;
      return new ListTile(
        title: new Text(
          verse.verseText,
          style: TextStyle(
              color: special ? Colors.indigoAccent : Colors.black,
              fontSize: 18.0),
        ),
        trailing: new Text(
          verse.verseId,
          style: TextStyle(color: Colors.indigoAccent, fontSize: 16.0),
        ),
      );
    }).toList();
  }
}
