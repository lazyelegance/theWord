import 'package:flutter/foundation.dart';

class Book {
  const Book({
    @required this.damId,
    @required this.bookId,
    @required this.bookName,
    @required this.bookOrder,
    @required this.numberOfChapters,
  })  : assert(damId != null),
        assert(bookId != null),
        assert(bookOrder != null),
        assert(numberOfChapters != null);

  final String damId;
  final String bookId;
  final String bookName;
  final int bookOrder;
  final int numberOfChapters;

  factory Book.fromJson(json) {
    return new Book(
        damId: json['dam_id'],
        bookId: json['book_id'],
        bookName: json['book_name'],
        bookOrder: json['book_order'], // FIXME: convert to int
        numberOfChapters: json['number_of_chapters']); // FIXME: convert to int
  }
}
