import 'package:flutter/foundation.dart';

class TheBook {
  const TheBook({@required this.version, @required this.language})
      : assert(version != null),
        assert(language != null);

  final String version;
  final String language;

  String getDamId() => '$language$version';
}
