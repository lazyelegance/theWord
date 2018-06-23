import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

import 'colors.dart';
import 'model/chapter.dart';
import 'model/book.dart';
import 'fixtures/bookdata.dart';

class ChapterSelectMenu extends StatelessWidget {
  final Book currentBook;
  final Chapter currentChapter;
  final ValueChanged<Book> onBookTap;
  // final List<Book> _books;

  const ChapterSelectMenu({
    Key key,
    @required this.currentBook,
    @required this.onBookTap,
    this.currentChapter,
  })  : assert(currentBook != null),
        assert(onBookTap != null);

  Widget _buildBook(Book book, BuildContext context) {
    final bookNameString = book.getBookName();
    final ThemeData theme = Theme.of(context);

    return GestureDetector(
        onTap: () => onBookTap(book),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10.0),
          child: Text(
            bookNameString,
            style: theme.textTheme.body2.copyWith(
                color: book == currentBook
                    ? kPrimaryTextHigh
                    : kSecondaryColor.withAlpha(153)),
            textAlign: TextAlign.left,
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    List<Book> books = getBooks();
    return Center(
        child: Container(
      padding: EdgeInsets.only(top: 10.0),
      color: kPrimaryColor,
      child: ListView(
        padding: EdgeInsets.all(20.0),
        children: books.map((Book book) => _buildBook(book, context)).toList(),
      ),
    ));
  }
}
