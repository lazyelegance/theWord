import 'package:flutter/foundation.dart';

import 'verse.dart';

class Chapter {
  const Chapter(
      {@required this.bookId,
      @required this.bookName,
      @required this.bookOrder,
      @required this.chapterId,
      @required this.chapterTitle,
      @required this.verses})
      : assert(bookId != null),
        assert(bookName != null),
        assert(bookOrder != null),
        assert(chapterId != null),
        assert(chapterTitle != null),
        assert(verses != null);

  final String bookName;
  final String bookId;
  final String bookOrder;
  final String chapterId;
  final String chapterTitle;
  final List verses;

  factory Chapter.fromJson(json) {
    var verses = [];
    var first = json[0];
    for (var verse in json) {
      final newVerse = new Verse.fromJson(verse);
      verses.add(newVerse);
    }
    return new Chapter(
        bookName: first['book_name'],
        bookId: first['book_id'],
        bookOrder: first['book_order'],
        chapterId: first['chapter_id'],
        chapterTitle: first['chapter_title'],
        verses: verses);
  }
}
