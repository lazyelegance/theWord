import '../model/version.dart';

List<Version> getVersions() {
  return <Version>[
    Version(
      versionCode: "KJV",
      versionName: "King James Version",
      englishName: "King James Version",
    ),
    Version(
      versionCode: "ESV",
      versionName: "English Standard Version",
      englishName: "English Standard Version",
    )
  ];
}
