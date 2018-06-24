import 'dart:async';
import 'dart:convert';
import 'dart:math';

import 'package:flutter/services.dart' show rootBundle;
import 'package:http/http.dart' as http;

import '../model/verse.dart';
import '../model/chapter.dart';

String baseTextUrl = 'http://dbt.io/text/';

Future<String> _loadKeysAsset() async {
  return await rootBundle.loadString('keys/apikeys.json');
}

Future<Verse> fetchVerse(
    String bookId, String damId, String chapterId, String verseId) async {
  String keys = await _loadKeysAsset();
  Map decoded = json.decode(keys);

  String key = decoded['key'];

  String damIdFixed = '${damId}1ET'; // TODO: check if valid

  String url =
      '${baseTextUrl}verse?key=$key&v=2&dam_id=$damIdFixed&book_id=$bookId&chapter_id=$chapterId';
  final response = await http.get(url);
  final responseJson = json.decode(response.body);

  return new Verse.fromJson(responseJson[0]);
}

Future<Chapter> fetchChapter(
    String bookId, String damId, String chapterId) async {
  String keys = await _loadKeysAsset();
  Map decoded = json.decode(keys);

  String key = decoded['key'];

  String damIdFixed = '${damId}1ET'; // TODO: check if valid

  String url =
      '${baseTextUrl}verse?key=$key&v=2&dam_id=$damIdFixed&book_id=$bookId&chapter_id=$chapterId';

  final response = await http.get(url);
  final responseJson = json.decode(response.body);

  return new Chapter.fromJson(responseJson);
}

Future<Verse> fetchVerseFromChapter(
    String bookId, String damId, String chapterId) async {
  String keys = await _loadKeysAsset();
  Map decoded = json.decode(keys);

  String key = decoded['key'];

  String damIdFixed = '${damId}1ET'; // TODO: check if valid

  String url =
      '${baseTextUrl}verse?key=$key&v=2&dam_id=$damIdFixed&book_id=$bookId&chapter_id=$chapterId';

  final response = await http.get(url);
  final responseJson = json.decode(response.body);

  var chapter = new Chapter.fromJson(responseJson);

  var randomVerse = new Random().nextInt(chapter.verses.length);

  return chapter.verses[randomVerse + 1];
}
