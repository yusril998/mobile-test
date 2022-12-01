class BeritaType {
  // status
  static const AllRegional = "Semua";
  static const National = "Nasional";
  static const Kwarnas = "Kwarnas";
  static const Kwarda = "Kwarda";
  static const Kwarcab = "Kwarcab";
  static const Kwarran = "Kwarran";
  static const School = "Sekolah";

  static const Province = "Provinsi";
  static const Kabupaten = "Kabupaten";
  static const Kecamatan = "Kecamatan";

  static const listRegionalLevel = [
    AllRegional,
    National,
    Kwarda,
    Kwarcab,
    Kwarran,
    School,
  ];

  static const listBeritaFilter = [
    AllRegional,
    National,
    Province,
    Kabupaten,
    Kecamatan,
  ];

  static String getTypeString(String type) {
    switch (type) {
      case AllRegional:
        return '';
      case National:
        return National;
      case Kwarda:
        return Kwarda;
      case Kwarcab:
        return Kwarcab;
      case Kwarran:
        return Kwarran;
      case School:
        return School;
      default:
        return '';
    }
  }

  static String getTypeRegion(String type) {
    switch (type) {
      case AllRegional:
        return '';
      case National:
        return National;
      case Kwarnas:
        return National;
      case Kwarda:
        return Province;
      case Kwarcab:
        return Kabupaten;
      case Kwarran:
        return Kecamatan;
      default:
        return '';
    }
  }

  static String getTypeFilter(String type) {
    switch (type) {
      case AllRegional:
        return '';
      case National:
        return Kwarnas;
      case Province:
        return Kwarda;
      case Kabupaten:
        return Kwarcab;
      case Kecamatan:
        return Kwarran;
      default:
        return '';
    }
  }
}
