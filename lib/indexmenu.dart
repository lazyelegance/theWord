import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

import 'colors.dart';
import 'model/book.dart';
import 'fixtures/bookdata.dart';

class ChapterSelectMenu extends StatelessWidget {
  final Book currentBook;
  final int currentChapter;
  final ValueChanged<Book> onBookTap;
  final ValueChanged<int> onChapterTap;

  const ChapterSelectMenu({
    Key key,
    @required this.currentBook,
    @required this.onBookTap,
    @required this.onChapterTap,
    this.currentChapter,
  })  : assert(currentBook != null),
        assert(onBookTap != null),
        assert(onChapterTap != null);

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

  Widget _buildChapterGrid(BuildContext context, BoxConstraints constraints) {
    final Size layerSize = constraints.biggest;
    final double topPadding = 15.0;
    final double topMargin = 100.0;
    final double rightMargin = 10.0;

    var currentBookChapters = [];

    for (var i = 0; i < currentBook.numberOfChapters; i++) {
      currentBookChapters.add((i + 1));
    }

    return new Container(
      height: layerSize.height - 2 * topMargin - topPadding,
      padding: EdgeInsets.all(topPadding),
      margin: EdgeInsets.only(top: topMargin, right: rightMargin),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
      ),
      child: GridView.count(
          scrollDirection: Axis.vertical,
          primary: false,
          crossAxisSpacing: 15.0,
          mainAxisSpacing: 25.0,
          crossAxisCount: 4,
          children: currentBookChapters
              .map((chapter) => FlatButton(
                    padding: EdgeInsets.all(0.0),
                    child: Text(
                      chapter.toString(),
                      style: TextStyle(
                          color: currentChapter == chapter
                              ? kSurfaceWhite
                              : kSecondaryColor.withAlpha(153)),
                      textAlign: TextAlign.center,
                    ),
                    onPressed: () => onChapterTap(chapter),
                    color: kPrimaryColor,
                  ))
              .toList()),
    );
  }

  @override
  Widget build(BuildContext context) {
    List<Book> books = getBooks();
    return Container(
      padding: EdgeInsets.only(top: 10.0),
      color: kPrimaryColor,
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
              child: ListView(
            padding: EdgeInsets.all(20.0),
            children:
                books.map((Book book) => _buildBook(book, context)).toList(),
          )),
          Expanded(
            child: LayoutBuilder(builder: _buildChapterGrid),
          )
        ],
      ),
    );
  }
}
