import 'dart:io';

import 'package:path_provider/path_provider.dart';

class DirectoryPlatform {
  static Future<String> findLocalPath() async {
    final Directory? directory = Platform.isAndroid
        ? await getExternalStorageDirectory()
        : await getLibraryDirectory();
    return directory!.path;
  }
}
