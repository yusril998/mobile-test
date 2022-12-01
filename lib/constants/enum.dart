enum AuthStatus {
  NOT_DETERMINED,
  NOT_LOGGED_IN,
  LOGGED_IN,
}
enum TweetType { Tweet, Detail, Reply, ParentTweet, Forum, Kegiatan }

enum TweetTypeProfile { All, Reply, Media }

enum TweetPostType { Tweet, Reply, Repost, Edit }
enum GpsState { LOADING, ENABLED, DENIED, NOT_ALLOWED }
enum LoadStatus {
  NULL,
  LOADING,
  LOADED,
  SUCCESS,
  EMPTY,
  ERROR,
  FAILED,
  TIMEOUT
}
enum SortUser {
  ByVerified,
  ByAlphabetically,
  ByNewest,
  ByOldest,
  ByMaxFollower
}
enum TypeListUser {
  Mute,
  Followers,
  Following,
  Block,
  BlockComment,
  Like,
  View,
  Repost,
  Message,
  User,
  Kegiatan,
  PollingList,
}

enum NotificationType {
  NOT_DETERMINED,
  Message,
  Tweet,
  Reply,
  Retweet,
  Follow,
  Mention,
  Comment,
  Repost,
  Like
}
