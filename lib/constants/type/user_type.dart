import 'package:ayopramuka/constants/enum.dart';
import 'package:ayopramuka/utils/dictionary.dart';

class UserType {
  static String getTitleUserPage(TypeListUser type) {
    switch (type) {
      case TypeListUser.View:
        return "Dilihat oleh";
      case TypeListUser.Block:
        return "Pengguna Diblokir";
      case TypeListUser.Mute:
        return "Pengguna Dibisukan";
      case TypeListUser.Following:
        return "Mengikuti";
      case TypeListUser.Followers:
        return "Pengikut";
      case TypeListUser.PollingList:
        return "Pengguna telah polling";
      case TypeListUser.Kegiatan:
        return "Diikuti oleh";
      case TypeListUser.User:
        return "Pencarian Jamaah";
      case TypeListUser.BlockComment:
        return "Privasi Komentar";
      default:
        return '';
    }
  }

  static String getEmptyStringUserPage(TypeListUser type, {String? user}) {
    switch (type) {
      case TypeListUser.View:
        return "";
      case TypeListUser.Block:
        return "Tidak ada pengguna diblokir";
      case TypeListUser.Mute:
        return "Tidak ada pengguna dibisukan";
      case TypeListUser.Following:
        return "${user ?? Dictionary.CALL} belum mengikuti anggota lain";
      case TypeListUser.Followers:
        return "${user ?? Dictionary.CALL} belum mempunyai pengikut";
      case TypeListUser.PollingList:
        return "${user ?? Dictionary.CALL} belum ada yang melakukan polling";
      case TypeListUser.Kegiatan:
        return "Belum ada pengguna yang mengikuti kegiatan ini";
      default:
        return '';
    }
  }
}
