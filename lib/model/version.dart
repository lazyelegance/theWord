import 'package:flutter/foundation.dart';

class Version {
  const Version(
      {@required this.versionCode,
      @required this.versionName,
      @required this.englishName})
      : assert(versionCode != null),
        assert(versionName != null),
        assert(englishName != null);

  final String versionCode;
  final String versionName;
  final String englishName;

  String getEnglishName() => englishName;

  //TODO: (format) remove trailing spaces
  factory Version.fromJson(json) {
    return new Version(
      versionCode: json['version_code'],
      versionName: json['version_name'],
      englishName: json['english_name'],
    );
  }
}
