import 'package:geektest/config/config_apps.dart';
import 'package:geektest/config/directory_platform.dart';
import 'package:hive/hive.dart';

class Preferences {
  static const HIVE_BOX = "GeekTestBox";
  static const HIVE_WELCOME_PAGE = "FirstApp";
  static const HIVE_GUEST = "GuestApp";
  static const HIVE_USER_ID = "UserId";
  static const HIVE_ID_ANGGOTA = "IdAnggota";
  static const HIVE_METHOD_LOGIN = "hiveMethodeLogin";
  static const HIVE_CURRENT_LOCATION = "CurrentLocation";
  static const HIVE_CITY_CODE = "CityCode";
  static const HIVE_TODAY_ISYA = "TodayIsya";
  static const HIVE_NEXT_IMSAK = "NextImsak";
  // first apps
  init() async {
    var path = await DirectoryPlatform.findLocalPath();
    Hive..init(path);
  }

  static Future<void> addFirstApp(dynamic data) async {
    var box = await Hive.openBox(HIVE_BOX);
    await box.put(HIVE_WELCOME_PAGE, data);
  }

  static Future<bool?> getFirstApp() async {
    var box = await Hive.openBox(HIVE_BOX);
    return box.get(HIVE_WELCOME_PAGE);
  }

  // user id
  static Future<void> addUserId(String data) async {
    var box = await Hive.openBox(HIVE_BOX);
    await box.put(HIVE_USER_ID, data);
  }

  static Future<String?> getUserId() async {
    var box = await Hive.openBox(HIVE_BOX);
    return box.get(HIVE_USER_ID);
    // return '3dLiZ7pLlugTcWDZGTWhiFXEpjo2';
  }

  static Future<void> deleteUserId() async {
    var box = await Hive.openBox(HIVE_BOX);
    return box.delete(HIVE_USER_ID);
  }
}
