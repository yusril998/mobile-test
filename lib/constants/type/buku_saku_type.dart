class BukuSakuType {
  // status
  static const AllStatus = "Semua";
  static const General = "Umum";
  static const Siaga = "Siaga";
  static const Penggalang = "Penggalang";
  static const Penegak = "Penegak";
  static const Pandega = "Pandega";

  static const listStatus = [
    'Semua',
    'Umum',
    'Siaga',
    'Penggalang',
    'Penegak',
    'Pandega',
  ];

  static String getTypeString(String type) {
    switch (type) {
      case AllStatus:
        return '';
      case General:
        return General;
      case Siaga:
        return Siaga;
      case Penggalang:
        return Penggalang;
      case Penegak:
        return Penegak;
      case Pandega:
        return Pandega;
      default:
        return '';
    }
  }
}
