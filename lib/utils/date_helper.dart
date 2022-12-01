// ignore_for_file: lines_longer_than_80_chars, unnecessary_null_comparison

import 'package:intl/intl.dart';

class DateHelper {
  static Map<int, String> listOfMonth = {
    DateTime.january: 'Jan',
    DateTime.february: 'Feb',
    DateTime.march: 'Mar',
    DateTime.april: 'Apr',
    DateTime.may: 'May',
    DateTime.june: 'Jun',
    DateTime.july: 'Jul',
    DateTime.august: 'Aug',
    DateTime.september: 'Sep',
    DateTime.october: 'Oct',
    DateTime.november: 'Nov',
    DateTime.december: 'Dec',
  };

  static DateTime getMinusDate(
      {int? minusYear, int? minusMonth, int? minusDay}) {
    var _date = DateTime.now();
    var _year = minusYear != null ? _date.year - minusYear : _date.year;
    var _month = minusMonth != null ? _date.month - minusMonth : _date.month;
    var _day = minusDay != null ? _date.day - minusDay : _date.day;

    DateTime _newDate = DateTime(_year, _month, _day);
    return _newDate;
  }

  static DateTime getPlusDate({int? plusYear, int? plusMonth, int? plusDay}) {
    var _date = DateTime.now();
    var _year = plusYear != null ? _date.year + plusYear : _date.year;
    var _month = plusMonth != null ? _date.month + plusMonth : _date.month;
    var _day = plusDay != null ? _date.day + plusDay : _date.day;

    DateTime _newDate = DateTime(_year, _month, _day);
    return _newDate;
  }

  static String simpleDate(DateTime date) {
    return DateFormat('dd MMM yyyy').format(date);
  }

  static String plainServerDate(DateTime date) {
    return DateFormat('yyyy-MM-dd').format(date);
  }

  static String simpleDateHour(DateTime date) {
    return DateFormat('dd MMM yyyy HH:mm:ss').format(date);
  }

  static String simpleDateFromString(String date) {
    // format date accepted: 11-01-2022 (dd-MM-yyyy)

    if (date == '-') {
      return '-';
    }

    var rawReverse = date.split('-');
    var reversedDate = rawReverse[2] + rawReverse[1] + rawReverse[0];

    return DateFormat('dd MMM yyyy').format(DateTime.parse(reversedDate));
  }

  static String normalDate(DateTime date) {
    return DateFormat('dd/MM/yyyy').format(date);
  }

  static String normalDateFromString(String date) {
    if (date == '-' || date == null || date.isEmpty) {
      return '-';
    }

    var rawReverse = date.split('-');
    var reversedDate = rawReverse[2] + rawReverse[1] + rawReverse[0];

    return DateFormat('dd/MM/yyyy').format(DateTime.parse(reversedDate));
  }

  static String normalServerDate(DateTime date) {
    return DateFormat('yyyy-MM-dd HH:mm:00').format(date);
  }

  static String normalServerDateFromString(String date) {
    // format date accepted: 11 Jan 2022 11:05:00 (dd MMM yyyy HH:mm:ss)
    var rawDate = date.split(' ');
    var rawTime = rawDate[3].split(':');
    var day = int.parse(rawDate[0]);
    var mapMonth = listOfMonth.entries
        .firstWhere((element) => element.value == rawDate[1]);
    var intMonth = mapMonth.key;
    var year = int.parse(rawDate[2]);

    return DateFormat('yyyy-MM-dd HH:mm:00').format(DateTime(
        year, intMonth, day, int.parse(rawTime[0]), int.parse(rawTime[1])));
  }

  static String plainServerDateFromString(String date) {
    // format date accepted: 11-01-2022
    if (date == '-' || date == null || date.isEmpty) {
      return '-';
    }
    var rawDate = date.split('-');
    var day = int.parse(rawDate[0]);
    var intMonth = int.parse(rawDate[1]);
    var year = int.parse(rawDate[2]);

    return DateFormat('yyyy-MM-dd').format(DateTime(year, intMonth, day));
  }

  static String withoutRegexFormat(DateTime date) {
    return DateFormat('ddMMyy').format(date);
  }

  static DateTime formatFromRespons(String date) {
    var inputFormat = DateFormat('dd/MM/yyyy');
    var inputDate = inputFormat.parse(date); // <-- dd/MM 24H format

    return inputDate;
  }

  static String minutesSecondFormat(Duration d) {
    String f(int n) {
      return n.toString().padLeft(2, '0');
    }

    // We want to round up the remaining time to the nearest second
    d += Duration(microseconds: 999999);
    return "${f(d.inMinutes)}:${f(d.inSeconds % 60)}";
  }

  static String chatTime(DateTime date) {
    return "${date.hour.toString().padLeft(2, "0")}:${date.minute.toString().padLeft(2, "0")}";
  }
}
