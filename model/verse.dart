import 'package:flutter/foundation.dart';

class Verse {
  const Verse({
    @required this.bookId,
    @required this.bookName,
    @required this.bookOrder,
    @required this.chapterId,
    @required this.chapterTitle,
    @required this.verseId,
    @required this.verseText,
  })  : assert(bookId != null),
        assert(bookName != null),
        assert(bookOrder != null),
        assert(chapterId != null),
        assert(chapterTitle != null),
        assert(verseId != null),
        assert(verseText != null);

  final String bookName;
  final String bookId;
  final String bookOrder;
  final String chapterId;
  final String chapterTitle;
  final String verseText;
  final String verseId;
  final int paragraphNumber;

  factory Verse.fromJson(Map<String, dynamic> json) {
    return new Verse(
      bookName: json['book_name'],
      bookId: json['book_id'],
      bookOrder: json['book_order'],
      chapterId: json['chapter_id'],
      chapterTitle: json['chapter_title'],
      verseId: json['verse_id'],
      verseText: json['verse_text'],
    );
  }
}
