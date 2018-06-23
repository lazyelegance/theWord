import 'package:flutter/material.dart';

import 'chapterview.dart';
import 'colors.dart';

class HomePage extends StatelessWidget {
  final String bookId;
  final String chapterId;
  final String damId;

  const HomePage({
    this.bookId: 'Ezra',
    this.damId = "ENGKJVO",
    this.chapterId: '7',
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new ChapterView(bookId: bookId, chapterId: chapterId, damId: damId),
    );
  }
}
