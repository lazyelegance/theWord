import '../model/verse.dart';

List<Verse> getVerses(String bookName, String chapterId) {
  const sampleVerses = <Verse>[
    Verse(
      bookName: "Ezra",
      bookId: "Ezra",
      bookOrder: "15",
      chapterId: "7",
      chapterTitle: "Chapter 7",
      verseId: "1",
      verseText:
          "Now after these things, in the reign of Artaxerxes king of Persia, Ezra the son of Seraiah, the son of Azariah, the son of Hilkiah, \n\t\t\t",
    ),
    Verse(
      bookName: "Ezra",
      bookId: "Ezra",
      bookOrder: "15",
      chapterId: "7",
      chapterTitle: "Chapter 7",
      verseId: "2",
      verseText:
          "The son of Shallum, the son of Zadok, the son of Ahitub, \n\t\t\t",
    ),
    Verse(
      bookName: "Ezra",
      bookId: "Ezra",
      bookOrder: "15",
      chapterId: "7",
      chapterTitle: "Chapter 7",
      verseId: "3",
      verseText:
          "The son of Amariah, the son of Azariah, the son of Meraioth, \n\t\t\t",
    ),
    Verse(
      bookName: "Ezra",
      bookId: "Ezra",
      bookOrder: "15",
      chapterId: "7",
      chapterTitle: "Chapter 7",
      verseId: "4",
      verseText:
          "The son of Zerahiah, the son of Uzzi, the son of Bukki, \n\t\t\t",
    ),
    Verse(
      bookName: "Ezra",
      bookId: "Ezra",
      bookOrder: "15",
      chapterId: "7",
      chapterTitle: "Chapter 7",
      verseId: "5",
      verseText:
          "The son of Abishua, the son of Phinehas, the son of Eleazar, the son of Aaron the chief priest: \n\t\t\t",
    ),
    Verse(
      bookName: "Ezra",
      bookId: "Ezra",
      bookOrder: "15",
      chapterId: "7",
      chapterTitle: "Chapter 7",
      verseId: "6",
      verseText:
          "This Ezra went up from Babylon; and he was a ready scribe in the law of Moses, which the LORD God of Israel had given: and the king granted him all his request, according to the hand of the LORD his God upon him. \n\t\t\t",
    ),
    Verse(
      bookName: "Ezra",
      bookId: "Ezra",
      bookOrder: "15",
      chapterId: "7",
      chapterTitle: "Chapter 7",
      verseId: "7",
      verseText:
          "And there went up some of the children of Israel, and of the priests, and the Levites, and the singers, and the porters, and the Nethinims, unto Jerusalem, in the seventh year of Artaxerxes the king. \n\t\t\t",
    ),
    Verse(
      bookName: "Ezra",
      bookId: "Ezra",
      bookOrder: "15",
      chapterId: "7",
      chapterTitle: "Chapter 7",
      verseId: "8",
      verseText:
          "And he came to Jerusalem in the fifth month, which was in the seventh year of the king. \n\t\t\t",
    ),
    Verse(
      bookName: "Ezra",
      bookId: "Ezra",
      bookOrder: "15",
      chapterId: "7",
      chapterTitle: "Chapter 7",
      verseId: "9",
      verseText:
          "For upon the first day of the first month began he to go up from Babylon, and on the first day of the fifth month came he to Jerusalem, according to the good hand of his God upon him. \n\t\t\t",
    ),
    Verse(
      bookName: "Ezra",
      bookId: "Ezra",
      bookOrder: "15",
      chapterId: "7",
      chapterTitle: "Chapter 7",
      verseId: "10",
      verseText:
          "For Ezra had prepared his heart to seek the law of the LORD, and to do it, and to teach in Israel statutes and judgments. \n\t\t\t",
    ),
    Verse(
      bookName: "Ezra",
      bookId: "Ezra",
      bookOrder: "15",
      chapterId: "7",
      chapterTitle: "Chapter 7",
      verseId: "11",
      verseText:
          "Now this is the copy of the letter that the king Artaxerxes gave unto Ezra the priest, the scribe, even a scribe of the words of the commandments of the LORD, and of his statutes to Israel. \n\t\t\t",
    ),
    Verse(
      bookName: "Ezra",
      bookId: "Ezra",
      bookOrder: "15",
      chapterId: "7",
      chapterTitle: "Chapter 7",
      verseId: "12",
      verseText:
          "Artaxerxes, king of kings, unto Ezra the priest, a scribe of the law of the God of heaven, perfect peace, and at such a time. \n\t\t\t",
    ),
    Verse(
      bookName: "Ezra",
      bookId: "Ezra",
      bookOrder: "15",
      chapterId: "7",
      chapterTitle: "Chapter 7",
      verseId: "13",
      verseText:
          "I make a decree, that all they of the people of Israel, and of his priests and Levites, in my realm, which are minded of their own freewill to go up to Jerusalem, go with thee. \n\t\t\t",
    ),
    Verse(
      bookName: "Ezra",
      bookId: "Ezra",
      bookOrder: "15",
      chapterId: "7",
      chapterTitle: "Chapter 7",
      verseId: "14",
      verseText:
          "Forasmuch as thou art sent of the king, and of his seven counsellors, to enquire concerning Judah and Jerusalem, according to the law of thy God which is in thine hand; \n\t\t\t",
    ),
    Verse(
      bookName: "Ezra",
      bookId: "Ezra",
      bookOrder: "15",
      chapterId: "7",
      chapterTitle: "Chapter 7",
      verseId: "15",
      verseText:
          "And to carry the silver and gold, which the king and his counsellors have freely offered unto the God of Israel, whose habitation is in Jerusalem, \n\t\t\t",
    ),
    Verse(
      bookName: "Ezra",
      bookId: "Ezra",
      bookOrder: "15",
      chapterId: "7",
      chapterTitle: "Chapter 7",
      verseId: "16",
      verseText:
          "And all the silver and gold that thou canst find in all the province of Babylon, with the freewill offering of the people, and of the priests, offering willingly for the house of their God which is in Jerusalem: \n\t\t\t",
    ),
    Verse(
      bookName: "Ezra",
      bookId: "Ezra",
      bookOrder: "15",
      chapterId: "7",
      chapterTitle: "Chapter 7",
      verseId: "17",
      verseText:
          "That thou mayest buy speedily with this money bullocks, rams, lambs, with their meat offerings and their drink offerings, and offer them upon the altar of the house of your God which is in Jerusalem. \n\t\t\t",
    ),
    Verse(
      bookName: "Ezra",
      bookId: "Ezra",
      bookOrder: "15",
      chapterId: "7",
      chapterTitle: "Chapter 7",
      verseId: "18",
      verseText:
          "And whatsoever shall seem good to thee, and to thy brethren, to do with the rest of the silver and the gold, that do after the will of your God. \n\t\t\t",
    ),
    Verse(
      bookName: "Ezra",
      bookId: "Ezra",
      bookOrder: "15",
      chapterId: "7",
      chapterTitle: "Chapter 7",
      verseId: "19",
      verseText:
          "The vessels also that are given thee for the service of the house of thy God, those deliver thou before the God of Jerusalem. \n\t\t\t",
    ),
    Verse(
      bookName: "Ezra",
      bookId: "Ezra",
      bookOrder: "15",
      chapterId: "7",
      chapterTitle: "Chapter 7",
      verseId: "20",
      verseText:
          "And whatsoever more shall be needful for the house of thy God, which thou shalt have occasion to bestow, bestow it out of the king's treasure house. \n\t\t\t",
    ),
    Verse(
      bookName: "Ezra",
      bookId: "Ezra",
      bookOrder: "15",
      chapterId: "7",
      chapterTitle: "Chapter 7",
      verseId: "21",
      verseText:
          "And I, even I Artaxerxes the king, do make a decree to all the treasurers which are beyond the river, that whatsoever Ezra the priest, the scribe of the law of the God of heaven, shall require of you, it be done speedily, \n\t\t\t",
      special: true,
    ),
    Verse(
      bookName: "Ezra",
      bookId: "Ezra",
      bookOrder: "15",
      chapterId: "7",
      chapterTitle: "Chapter 7",
      verseId: "22",
      verseText:
          "Unto an hundred talents of silver, and to an hundred measures of wheat, and to an hundred baths of wine, and to an hundred baths of oil, and salt without prescribing how much. \n\t\t\t",
    ),
    Verse(
      bookName: "Ezra",
      bookId: "Ezra",
      bookOrder: "15",
      chapterId: "7",
      chapterTitle: "Chapter 7",
      verseId: "23",
      verseText:
          "Whatsoever is commanded by the God of heaven, let it be diligently done for the house of the God of heaven: for why should there be wrath against the realm of the king and his sons? \n\t\t\t",
    ),
    Verse(
      bookName: "Ezra",
      bookId: "Ezra",
      bookOrder: "15",
      chapterId: "7",
      chapterTitle: "Chapter 7",
      verseId: "24",
      verseText:
          "Also we certify you, that touching any of the priests and Levites, singers, porters, Nethinims, or ministers of this house of God, it shall not be lawful to impose toll, tribute, or custom, upon them. \n\t\t\t",
    ),
    Verse(
      bookName: "Ezra",
      bookId: "Ezra",
      bookOrder: "15",
      chapterId: "7",
      chapterTitle: "Chapter 7",
      verseId: "25",
      verseText:
          "And thou, Ezra, after the wisdom of thy God, that is in thine hand, set magistrates and judges, which may judge all the people that are beyond the river, all such as know the laws of thy God; and teach ye them that know them not. \n\t\t\t",
    ),
    Verse(
      bookName: "Ezra",
      bookId: "Ezra",
      bookOrder: "15",
      chapterId: "7",
      chapterTitle: "Chapter 7",
      verseId: "26",
      verseText:
          "And whosoever will not do the law of thy God, and the law of the king, let judgment be executed speedily upon him, whether it be unto death, or to banishment, or to confiscation of goods, or to imprisonment. \n\t\t\t",
    ),
    Verse(
      bookName: "Ezra",
      bookId: "Ezra",
      bookOrder: "15",
      chapterId: "7",
      chapterTitle: "Chapter 7",
      verseId: "27",
      verseText:
          "Blessed be the LORD God of our fathers, which hath put such a thing as this in the king's heart, to beautify the house of the LORD which is in Jerusalem: \n\t\t\t",
    ),
    Verse(
      bookName: "Ezra",
      bookId: "Ezra",
      bookOrder: "15",
      chapterId: "7",
      chapterTitle: "Chapter 7",
      verseId: "28",
      verseText:
          "And hath extended mercy unto me before the king, and his counsellors, and before all the king's mighty princes. And I was strengthened as the hand of the LORD my God was upon me, and I gathered together out of Israel chief men to go up with me. \n\t\t\n\t\t",
    )
  ];

  return sampleVerses
      .where(
          (verse) => verse.bookName == bookName && verse.chapterId == chapterId)
      .toList();
}
