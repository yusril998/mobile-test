import 'package:flutter/material.dart';

const String imgDedy =
    'https://asset.kompas.com/crops/2Ewjs5YjG7z1bnhWdBve_jABJuc=/0x17:595x414/750x500/data/photo/2021/10/21/6170eb4e82bcf.png';
const String imgUna =
    'https://i.pinimg.com/736x/79/f4/ee/79f4eed75f261b71c19a685ca4fca705.jpg';
String dummyProfilePic =
    'https://www.survivorsuk.org/wp-content/uploads/2017/01/no-image.jpg';
const String dummyImg =
    'https://media.istockphoto.com/photos/3d-empty-room-with-soft-ceiling-illumination-picture-id537619232?k=6&m=537619232&s=170667a&w=0&h=SJScblZYI3cPictMQgL51QREAQwR-Ed2wrx8XejTxu8=';

String appFont = 'HelveticaNeuea';
List<String> dummyProfilePicList = [
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ6TaCLCqU4K0ieF27ayjl51NmitWaJAh_X0r1rLX4gMvOe0MDaYw&s',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTFDjXj1F8Ix-rRFgY_r3GerDoQwfiOMXVt-tZdv_Mcou_yIlUC&s',
  'http://www.azembelani.co.za/wp-content/uploads/2016/07/20161014_58006bf6e7079-3.png',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRzDG366qY7vXN2yng09wb517WTWqp-oua-mMsAoCadtncPybfQ&s',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTq7BgpG1CwOveQ_gEFgOJASWjgzHAgVfyozkIXk67LzN1jnj9I&s',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRPxjRIYT8pG0zgzKTilbko-MOv8pSnmO63M9FkOvfHoR9FvInm&s',
  'https://cdn5.f-cdn.com/contestentries/753244/11441006/57c152cc68857_thumb900.jpg',
  'https://cdn6.f-cdn.com/contestentries/753244/20994643/57c189b564237_thumb900.jpg'
];
List<String> welcomeImgList = [
  "assets/images/log1.png",
  "assets/images/log2.png",
  "assets/images/log3.png"
];
const ID_APPS_PLAYSTORE = "id.pramuka.ayosatu.app";
const ID_APPS_APPSTORE = '1639075094'; // "1523576843";
const version_appstore = "1.0.1";

const Duration time_out = Duration(seconds: 5);

/// Firestore collections
///
/// Store `User` Model in db

const String IS_FIRST_POST = "firstPost";

const String USERS_COLLECTION = "profile";

const String CATEGORY_REPORT = "reportCategory";
const String SUB_CATEGORY_REPORT = "subCategory";
const String REPORT = "report";

// Store 'UserAyoPramuka' Model in db
const String USERS_AYO_PRAMUKA_COLLECTION = "pramukaUser";

const String PESAN_DIHAPUS = "Pesan telah dihapus";

/// Store `FeedModel` Model in db
const String TWEET_COLLECTION = "tweet";

/// Store `ChatMessage` Model in db
const String MESSAGES_COLLECTION = "messages";

/// Store `ChatMessage` Model in db
/// `chatUsers` ate stored in `ChatMessage` on purpose
const String CHAT_USER_LIST_COLLECTION = "chatUsers";

/// Store `NotificationModel` Model in db
const String NOTIFICATION_COLLECTION = "notification";

// const String FOLLOWER_COLLECTION = "followerList";

// const String FOLLOWING_COLLECTION = "followingList";

const String BLOCKED_COLLECTION = "blockedList";

const String BLOCKING_COLLECTION = "blockingList";

// // Below collections is not used yet
// const String TWEET_LIKE_COLLECTION = "likeList";

const kDefaultPadding = 20.0;

// DATA TWEET TYPE
const String BERITA_TYPE = "berita";
const String BUKUSAKU_TYPE = "bukusaku";
const String ELEARNING_TYPE = "youtube";
const String TWEET_TYPE = "tweet";
const String FORUM_TYPE = "thread_forum";
const String POLLING_TYPE = "polling";
const String KEGIATAN_TYPE = "kegiatan";
const String DOA_TYPE = "doa";
const String QURAN_TYPE = "quran";

const AUTO_ID_ALPHABET =
    'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';
const AUTO_ID_LENGTH = 20;

//COLORS
MaterialColor createMaterialColor(Color color) {
  List strengths = <double>[.05];
  final swatch = <int, Color>{};
  final int r = color.red, g = color.green, b = color.blue;

  for (int i = 1; i < 10; i++) {
    strengths.add(0.1 * i);
  }
  strengths.forEach((strength) {
    final double ds = 0.5 - strength;
    swatch[(strength * 1000).round()] = Color.fromRGBO(
      r + ((ds < 0 ? r : (255 - r)) * ds).round(),
      g + ((ds < 0 ? g : (255 - g)) * ds).round(),
      b + ((ds < 0 ? b : (255 - b)) * ds).round(),
      1,
    );
  });
  return MaterialColor(color.value, swatch);
}

const kMountainMistColor = Color(0xff959599);
const kSilverColor = Color(0xffC7C7CC);
