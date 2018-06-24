import 'dart:math';

import '../model/book.dart';

List<Book> getBooks() {
  return allBooks;
}

Book getNextBook(int bookOrder) {
  return bookOrder == getMaxBookOrder(allBooks)
      ? allBooks.singleWhere((book) => book.bookOrder == 1)
      : allBooks.singleWhere((book) => book.bookOrder == bookOrder + 1);
}

int getMaxBookOrder(List<Book> books) {
  var thisarray = books.map((book) => book.bookOrder);
  return thisarray.reduce(max);
}

Book getBookForWelcome() {
  var books = getBooks();
  var randomChapter = new Random().nextInt(books.length);
  return books[randomChapter];
}

// int getRandomChapter() => (new Random().nextInt(numberOfChapters) + 1);

const allBooks = <Book>[
  Book(
      damId: "ENGKJVO",
      bookId: "Gen",
      bookName: "Genesis",
      bookOrder: 1,
      numberOfChapters: 50),
  Book(
      damId: "ENGKJVO",
      bookId: "Exod",
      bookName: "Exodus",
      bookOrder: 2,
      numberOfChapters: 40),
  Book(
      damId: "ENGKJVO",
      bookId: "Lev",
      bookName: "Leviticus",
      bookOrder: 3,
      numberOfChapters: 27),
  Book(
      damId: "ENGKJVO",
      bookId: "Num",
      bookName: "Numbers",
      bookOrder: 4,
      numberOfChapters: 36),
  Book(
      damId: "ENGKJVO",
      bookId: "Deut",
      bookName: "Deuteronomy",
      bookOrder: 5,
      numberOfChapters: 34),
  Book(
      damId: "ENGKJVO",
      bookId: "Josh",
      bookName: "Joshua",
      bookOrder: 6,
      numberOfChapters: 24),
  Book(
      damId: "ENGKJVO",
      bookId: "Judg",
      bookName: "Judges",
      bookOrder: 7,
      numberOfChapters: 21),
  Book(
      damId: "ENGKJVO",
      bookId: "Ruth",
      bookName: "Ruth",
      bookOrder: 8,
      numberOfChapters: 4),
  Book(
      damId: "ENGKJVO",
      bookId: "1Sam",
      bookName: "1 Samuel",
      bookOrder: 9,
      numberOfChapters: 31),
  Book(
      damId: "ENGKJVO",
      bookId: "2Sam",
      bookName: "2 Samuel",
      bookOrder: 10,
      numberOfChapters: 24),
  Book(
      damId: "ENGKJVO",
      bookId: "1Kgs",
      bookName: "1 Kings",
      bookOrder: 11,
      numberOfChapters: 22),
  Book(
      damId: "ENGKJVO",
      bookId: "2Kgs",
      bookName: "2 Kings",
      bookOrder: 12,
      numberOfChapters: 25),
  Book(
      damId: "ENGKJVO",
      bookId: "1Chr",
      bookName: "1 Chronicles",
      bookOrder: 13,
      numberOfChapters: 29),
  Book(
      damId: "ENGKJVO",
      bookId: "2Chr",
      bookName: "2 Chronicles",
      bookOrder: 14,
      numberOfChapters: 36),
  Book(
      damId: "ENGKJVO",
      bookId: "Ezra",
      bookName: "Ezra",
      bookOrder: 15,
      numberOfChapters: 10),
  Book(
      damId: "ENGKJVO",
      bookId: "Neh",
      bookName: "Nehemiah",
      bookOrder: 16,
      numberOfChapters: 13),
  Book(
      damId: "ENGKJVO",
      bookId: "Esth",
      bookName: "Esther",
      bookOrder: 17,
      numberOfChapters: 10),
  Book(
      damId: "ENGKJVO",
      bookId: "Job",
      bookName: "Job",
      bookOrder: 18,
      numberOfChapters: 42),
  Book(
      damId: "ENGKJVO",
      bookId: "Ps",
      bookName: "Psalm",
      bookOrder: 19,
      numberOfChapters: 150),
  Book(
      damId: "ENGKJVO",
      bookId: "Prov",
      bookName: "Proverbs",
      bookOrder: 20,
      numberOfChapters: 31),
  Book(
      damId: "ENGKJVO",
      bookId: "Eccl",
      bookName: "Ecclesiastes",
      bookOrder: 21,
      numberOfChapters: 12),
  Book(
      damId: "ENGKJVO",
      bookId: "Song",
      bookName: "Song of Solomon",
      bookOrder: 22,
      numberOfChapters: 8),
  Book(
      damId: "ENGKJVO",
      bookId: "Isa",
      bookName: "Isaiah",
      bookOrder: 23,
      numberOfChapters: 66),
  Book(
      damId: "ENGKJVO",
      bookId: "Jer",
      bookName: "Jeremiah",
      bookOrder: 24,
      numberOfChapters: 52),
  Book(
      damId: "ENGKJVO",
      bookId: "Lam",
      bookName: "Lamentations",
      bookOrder: 25,
      numberOfChapters: 5),
  Book(
      damId: "ENGKJVO",
      bookId: "Ezek",
      bookName: "Ezekiel",
      bookOrder: 26,
      numberOfChapters: 48),
  Book(
      damId: "ENGKJVO",
      bookId: "Dan",
      bookName: "Daniel",
      bookOrder: 27,
      numberOfChapters: 12),
  Book(
      damId: "ENGKJVO",
      bookId: "Hos",
      bookName: "Hosea",
      bookOrder: 28,
      numberOfChapters: 14),
  Book(
      damId: "ENGKJVO",
      bookId: "Joel",
      bookName: "Joel",
      bookOrder: 29,
      numberOfChapters: 3),
  Book(
      damId: "ENGKJVO",
      bookId: "Amos",
      bookName: "Amos",
      bookOrder: 30,
      numberOfChapters: 9),
  Book(
      damId: "ENGKJVO",
      bookId: "Obad",
      bookName: "Obadiah",
      bookOrder: 31,
      numberOfChapters: 1),
  Book(
      damId: "ENGKJVO",
      bookId: "Jonah",
      bookName: "Jonah",
      bookOrder: 32,
      numberOfChapters: 4),
  Book(
      damId: "ENGKJVO",
      bookId: "Mic",
      bookName: "Micah",
      bookOrder: 33,
      numberOfChapters: 7),
  Book(
      damId: "ENGKJVO",
      bookId: "Nah",
      bookName: "Nahum",
      bookOrder: 34,
      numberOfChapters: 3),
  Book(
      damId: "ENGKJVO",
      bookId: "Hab",
      bookName: "Habakkuk",
      bookOrder: 35,
      numberOfChapters: 3),
  Book(
      damId: "ENGKJVO",
      bookId: "Zeph",
      bookName: "Zephaniah",
      bookOrder: 36,
      numberOfChapters: 3),
  Book(
      damId: "ENGKJVO",
      bookId: "Hag",
      bookName: "Haggai",
      bookOrder: 37,
      numberOfChapters: 2),
  Book(
      damId: "ENGKJVO",
      bookId: "Zech",
      bookName: "Zechariah",
      bookOrder: 38,
      numberOfChapters: 14),
  Book(
      damId: "ENGKJVO",
      bookId: "Mal",
      bookName: "Malachi",
      bookOrder: 39,
      numberOfChapters: 4),
  Book(
      damId: "ENGKJVN",
      bookId: "Matt",
      bookName: "Matthew",
      bookOrder: 55,
      numberOfChapters: 28),
  Book(
      damId: "ENGKJVN",
      bookId: "Mark",
      bookName: "Mark",
      bookOrder: 56,
      numberOfChapters: 16),
  Book(
      damId: "ENGKJVN",
      bookId: "Luke",
      bookName: "Luke",
      bookOrder: 57,
      numberOfChapters: 24),
  Book(
      damId: "ENGKJVN",
      bookId: "John",
      bookName: "John",
      bookOrder: 58,
      numberOfChapters: 21),
  Book(
      damId: "ENGKJVN",
      bookId: "Acts",
      bookName: "Acts",
      bookOrder: 59,
      numberOfChapters: 28),
  Book(
      damId: "ENGKJVN",
      bookId: "Rom",
      bookName: "Romans",
      bookOrder: 60,
      numberOfChapters: 16),
  Book(
      damId: "ENGKJVN",
      bookId: "1Cor",
      bookName: "1 Corinthians",
      bookOrder: 61,
      numberOfChapters: 16),
  Book(
      damId: "ENGKJVN",
      bookId: "2Cor",
      bookName: "2 Corinthians",
      bookOrder: 62,
      numberOfChapters: 13),
  Book(
      damId: "ENGKJVN",
      bookId: "Gal",
      bookName: "Galatians",
      bookOrder: 63,
      numberOfChapters: 6),
  Book(
      damId: "ENGKJVN",
      bookId: "Eph",
      bookName: "Ephesians",
      bookOrder: 64,
      numberOfChapters: 6),
  Book(
      damId: "ENGKJVN",
      bookId: "Phil",
      bookName: "Philippians",
      bookOrder: 65,
      numberOfChapters: 4),
  Book(
      damId: "ENGKJVN",
      bookId: "Col",
      bookName: "Colossians",
      bookOrder: 66,
      numberOfChapters: 4),
  Book(
      damId: "ENGKJVN",
      bookId: "1Thess",
      bookName: "1 Thessalonians",
      bookOrder: 67,
      numberOfChapters: 5),
  Book(
      damId: "ENGKJVN",
      bookId: "2Thess",
      bookName: "2 Thessalonians",
      bookOrder: 68,
      numberOfChapters: 3),
  Book(
      damId: "ENGKJVN",
      bookId: "1Tim",
      bookName: "1 Timothy",
      bookOrder: 69,
      numberOfChapters: 6),
  Book(
      damId: "ENGKJVN",
      bookId: "2Tim",
      bookName: "2 Timothy",
      bookOrder: 70,
      numberOfChapters: 4),
  Book(
      damId: "ENGKJVN",
      bookId: "Titus",
      bookName: "Titus",
      bookOrder: 71,
      numberOfChapters: 3),
  Book(
      damId: "ENGKJVN",
      bookId: "Phlm",
      bookName: "Philemon",
      bookOrder: 72,
      numberOfChapters: 1),
  Book(
      damId: "ENGKJVN",
      bookId: "Heb",
      bookName: "Hebrews",
      bookOrder: 73,
      numberOfChapters: 13),
  Book(
      damId: "ENGKJVN",
      bookId: "Jas",
      bookName: "James",
      bookOrder: 74,
      numberOfChapters: 5),
  Book(
      damId: "ENGKJVN",
      bookId: "1Pet",
      bookName: "1 Peter",
      bookOrder: 75,
      numberOfChapters: 5),
  Book(
      damId: "ENGKJVN",
      bookId: "2Pet",
      bookName: "2 Peter",
      bookOrder: 76,
      numberOfChapters: 3),
  Book(
      damId: "ENGKJVN",
      bookId: "1John",
      bookName: "1 John",
      bookOrder: 77,
      numberOfChapters: 5),
  Book(
      damId: "ENGKJVN",
      bookId: "2John",
      bookName: "2 John",
      bookOrder: 78,
      numberOfChapters: 1),
  Book(
      damId: "ENGKJVN",
      bookId: "3John",
      bookName: "3 John",
      bookOrder: 79,
      numberOfChapters: 1),
  Book(
      damId: "ENGKJVN",
      bookId: "Jude",
      bookName: "Jude",
      bookOrder: 80,
      numberOfChapters: 1),
  Book(
      damId: "ENGKJVN",
      bookId: "Rev",
      bookName: "Revelation",
      bookOrder: 81,
      numberOfChapters: 22)
];
