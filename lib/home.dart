import 'package:flutter/material.dart';

import 'chapterview.dart';
import 'colors.dart';

class HomePage extends StatelessWidget {
  final String bookId;
  final String chapterId;
  final String damId;
  final VoidCallback onPressNext;

  const HomePage(
      {this.bookId: 'Ezra',
      this.damId = "ENGKJVO",
      this.chapterId: '7',
      this.onPressNext});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new ChapterView(bookId: bookId, chapterId: chapterId, damId: damId),
      bottomNavigationBar: BottomAppBar(
        color: kSurfaceWhite,
        child: Container(
          height: 10.0,
          color: kSurfaceWhite,
        ),
        hasNotch: true,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.keyboard_arrow_right),
        onPressed: onPressNext,
        backgroundColor: kSurfaceWhite,
        foregroundColor: kPrimaryColor,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    );
  }
}
