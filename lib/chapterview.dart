import 'package:flutter/material.dart';

import 'model/chapter.dart';
import 'model/verse.dart';
import 'service/dbt.dart';

class ChapterView extends StatelessWidget {
  final String bookId;
  final String chapterId;
  final String damId;

  const ChapterView({Key key, this.bookId, this.damId, this.chapterId})
      : assert(bookId != null),
        assert(chapterId != null),
        assert(damId != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Center(
      child: new FutureBuilder<Chapter>(
        future: fetchChapter(bookId, damId, chapterId),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Container(
              child: ListView(
                padding: EdgeInsets.all(8.0),
                children: _buildListItems(snapshot.data.verses),
              ),
            );
          } else if (snapshot.hasError) {
            return Text("${snapshot.error}");
          }
          return new CircularProgressIndicator();
        },
      ),
    );
  }

  _buildListItems(List<Verse> verses) {
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
