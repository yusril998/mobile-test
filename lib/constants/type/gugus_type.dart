enum GugusType {
  Global,
  Kwarda,
  Kwarcab,
  Kwarran,
  Gudep,
}

class GugusTypeString {
  static const String kwartir = 'Kwartir';
  static const String kwarda = 'Provinsi';
  static const String kwarcab = 'Kabupaten';
  static const String kwarran = 'Kecamatan';
  static const String gudep = 'Desa';
  static const String gudepLabel = 'Desa';

  static String getTitleString(GugusType type) {
    switch (type) {
      case GugusType.Kwarda:
        return kwarda;
      case GugusType.Kwarcab:
        return kwarcab;
      case GugusType.Kwarran:
        return kwarran;
      case GugusType.Gudep:
        return gudep;
      default:
        return '';
    }
  }

  static String getNextLevelString(GugusType type) {
    switch (type) {
      case GugusType.Kwarda:
        return kwarcab;
      case GugusType.Kwarcab:
        return kwarran;
      case GugusType.Kwarran:
        return gudepLabel;
      default:
        return '';
    }
  }
}
