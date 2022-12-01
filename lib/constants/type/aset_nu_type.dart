enum AsetNuType {
  Pesantren,
  Masjid,
  Mushola,
  MajelisTaklim,
  Madin,
  MahanAly,
  Tpq,
}

class AsetNuTypeString {
  static const String pesantren = 'Pesantren';
  static const String masjid = 'Masjid';
  static const String mushola = 'Mushola';
  static const String majelisTaklim = 'Majelis Taklim';
  static const String madin = 'Madin';
  static const String mahanAly = 'Mahan Aly';
  static const String tpq = 'TPQ';

  static String getTitleString(AsetNuType type) {
    switch (type) {
      case AsetNuType.Pesantren:
        return pesantren;
      case AsetNuType.Masjid:
        return masjid;
      case AsetNuType.Mushola:
        return mushola;
      case AsetNuType.MajelisTaklim:
        return majelisTaklim;
      case AsetNuType.Madin:
        return madin;
      case AsetNuType.MahanAly:
        return mahanAly;
      case AsetNuType.Tpq:
        return tpq;
      default:
        return '';
    }
  }
}

class AsetNuTypeSearch {
  static const String pesantren = 'nama_pesantren';
  static const String masjid = 'nama_masjid';
  static const String mushola = 'nama_mushola';
  static const String majelisTaklim = 'nama_majelis';
  static const String madin = 'name';
  static const String mahanAly = 'name';
  static const String tpq = 'name';

  static String getSearchString(AsetNuType type) {
    switch (type) {
      case AsetNuType.Pesantren:
        return pesantren;
      case AsetNuType.Masjid:
        return masjid;
      case AsetNuType.Mushola:
        return mushola;
      case AsetNuType.MajelisTaklim:
        return majelisTaklim;
      case AsetNuType.Madin:
        return madin;
      case AsetNuType.MahanAly:
        return mahanAly;
      case AsetNuType.Tpq:
        return tpq;
      default:
        return '';
    }
  }
}

class AsetNuTypePath {
  static const String pesantren = 'pesantren';
  static const String masjid = 'masjid';
  static const String mushola = 'mushola';
  static const String majelisTaklim = 'majelis-taklim';
  static const String madin = 'madin';
  static const String mahanAly = 'mahan-aly';
  static const String tpq = 'tpq';

  static String getPathString(AsetNuType type) {
    switch (type) {
      case AsetNuType.Pesantren:
        return pesantren;
      case AsetNuType.Masjid:
        return masjid;
      case AsetNuType.Mushola:
        return mushola;
      case AsetNuType.MajelisTaklim:
        return majelisTaklim;
      case AsetNuType.Madin:
        return madin;
      case AsetNuType.MahanAly:
        return mahanAly;
      case AsetNuType.Tpq:
        return tpq;
      default:
        return '';
    }
  }
}

class TingkatanType {
  static const Provinsi = "Provinsi";
  static const Kabupaten = "Kabupaten";
  static const Kecamatan = "Kecamatan";
  static const Desa = "Desa";
}
