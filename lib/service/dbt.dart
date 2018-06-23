import 'dart:async';
import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;
import 'package:http/http.dart' as http;

import '../model/verse.dart';
import '../model/chapter.dart';

String baseTextUrl = 'http://dbt.io/text/';

Future<String> _loadKeysAsset() async {
  return await rootBundle.loadString('keys/apikeys.json');
}

Future<Verse> fetchVerse(String damId, String book, String chapter) async {
  String keys = await _loadKeysAsset();
  Map decoded = json.decode(keys);

  String key = decoded['key'];

  final response = await http.get(
      '${baseTextUrl}verse?key=$key&v=2&dam_id=ENGKJVO1ET&book_id=Ezra&chapter_id=7');
  final responseJson = json.decode(response.body);

  return new Verse.fromJson(responseJson[0]);
}

Future<Chapter> fetchChapter(String book, String chapter) async {
  String keys = await _loadKeysAsset();
  Map decoded = json.decode(keys);

  String key = decoded['key'];

  final response = await http.get(
      '${baseTextUrl}verse?key=$key&v=2&dam_id=ENGKJVO1ET&book_id=$book&chapter_id=$chapter');
  final responseJson = json.decode(response.body);

  return new Chapter.fromJson(responseJson);
}