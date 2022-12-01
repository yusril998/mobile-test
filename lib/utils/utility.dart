// ignore_for_file: unused_local_variable, deprecated_member_use

import 'dart:developer' as developer;
import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';
import 'package:path_provider/path_provider.dart';
import 'package:url_launcher/url_launcher.dart';

launchURL(String url) async {
  final Uri _url = Uri.parse(url);
  if (!await launchUrl(_url)) {
    cprint('Could not launch $url');
  }
}

String getPostTime2(String? date) {
  if (date == null || date.isEmpty) {
    return '';
  }
  var dt = DateTime.parse(date).toLocal();
  var dat =
      DateFormat.jm().format(dt) + ' - ' + DateFormat("dd MMM yy").format(dt);
  return dat;
}

String getDateTimeFormated(DateTime? date) {
  if (date == null) {
    return '';
  }
  var dt = date.toLocal();
  var dat = DateFormat("dd MMM yy HH:mm").format(dt);
  return dat;
}

Future<void> openMap(double latitude, double longitude) async {
  String googleUrl =
      'https://www.google.com/maps/search/?api=1&query=$latitude,$longitude';
  if (await canLaunch(googleUrl)) {
    await launch(googleUrl);
  } else {
    throw 'Could not open the map.';
  }
}

String formatDateRangeV2(
    BuildContext context, String datemulai, String dateselesai,
    {bool iswithTime = true}) {
  String tanggal = "";
  var rawMulai = DateFormat(
    "dd MMM yyyy",
  ).format(DateTime.parse(datemulai));
  var rawSelesai = DateFormat(
    "dd MMM yyyy",
  ).format(DateTime.parse(dateselesai));

  if (rawMulai == rawSelesai) {
    var time1 = DateFormat(
      "HH:mm",
    ).format(DateTime.parse(datemulai));
    var time2 = DateFormat(
      "HH:mm",
    ).format(DateTime.parse(dateselesai));
    if (iswithTime) {
      tanggal = rawMulai + " $time1 sd $time2";
    } else {
      tanggal = rawMulai;
    }
  } else {
    if (iswithTime) {
      tanggal = DateFormat(
            "dd MMM yyyy, HH:mm",
          ).format(DateTime.parse(datemulai)) +
          " sd " +
          DateFormat(
            "dd MMM yyyy, HH:mm",
          ).format(DateTime.parse(dateselesai));
    } else {
      tanggal = DateFormat(
            "dd MMM yyyy",
          ).format(DateTime.parse(datemulai)) +
          " sd " +
          DateFormat(
            "dd MMM yyyy",
          ).format(DateTime.parse(dateselesai));
    }
  }

  return tanggal;
}

Future<void> hideDialog() async {
  if (Get.isDialogOpen!) Get.back;
}

Future<void> hideBottomSheet() async {
  if (Get.isBottomSheetOpen!) Get.back;
}

Future backcreen() async {
  Get.back();
}

Future backtwoscreen(context) async {
  Get.back();
  Get.back();
}

Future backthreescreen(context) async {
  Get.back();
  Get.back();
  Get.back();
}

Future backfourscreen(context) async {
  Get.back();
  Get.back();
  Get.back();
  Get.back();
}

Future backfivescreen(context) async {
  Get.back();
  Get.back();
  Get.back();
  Get.back();
  Get.back();
}

void cprint(dynamic data, {String? errorIn, String? event, String? warningIn}) {
  if (errorIn != null) {
    developer.log('[Error]', time: DateTime.now(), error: data, name: errorIn);
  } else if (data != null) {
    developer.log(
      data.toString(),
      time: DateTime.now(),
    );
  }
  // if (event != null) {
  //   logEvent(event);
  // }
}

Future<File> urlToFile(String imageUrl) async {
  var rng = new Random();

  Directory tempDir = await getTemporaryDirectory();
  String h = imageUrl.split("/").last.split(".").last;
  String tempPath = tempDir.path;
  File file = new File('$tempPath' + (rng.nextInt(100)).toString() + "." + h);
  http.Response response = await http.get(Uri.parse(imageUrl));
  print("ini url " + imageUrl);
  print("ini url " + '$tempPath' + (rng.nextInt(100)).toString() + "." + h);
  await file.writeAsBytes(response.bodyBytes);

  return file;
}

List<String?> getHashTags(String text) {
  // RegExp reg = RegExp(
  //     r"([#])\w+|(https?|ftp|file|#)://[-A-Za-z0-9+&@#/%?=~_|!:,.;]+[-A-Za-z0-9+&@#/%=~_|]*");
  // Iterable<Match> _matches = reg.allMatches(text);
  // List<String?> resultMatches = [];
  // for (Match match in _matches) {
  //   if (match.group(0)!.isNotEmpty) {
  //     var tag = match.group(0);
  //     resultMatches.add(tag);
  //   }
  // }

  final List<String> textSpans = [];
  final RegExp regex = RegExp(r"\@(\w+)");
  final Iterable<Match> matches = regex.allMatches(text);
  int start = 0;
  for (final Match match in matches) {
    textSpans.add('@${match.group(1)}');
    start = match.end;
  }

  return textSpans;
  // return resultMatches;
}
