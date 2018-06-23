import 'package:flutter/material.dart';

import 'chapterview.dart';

class HomePage extends StatelessWidget {
  final String chapter;
  final String book;

  const HomePage({this.book: 'Ezra', this.chapter: '7'});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new ChapterView(),
    );
  }
}
