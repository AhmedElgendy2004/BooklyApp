import 'package:bookly_app/Core/Theme/constants.dart';
import 'package:flutter/material.dart';

abstract class Styles {
  /*
  انشاء اكتر من الاستايل للنصوص
و الاسم معبر عن الاستايل النص بناء علي اكتر حاجه مميزه في النص الي موجوده في الابلكاشن
fontFamily  ثابت في معظم الخطوط الا مع حالات شاذه

 */

  static const text14gray = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
    color: Colors.white54,
  );

  static const text16 = TextStyle(fontSize: 16, fontWeight: FontWeight.w800);

  static const text20 = TextStyle(fontSize: 20, fontWeight: FontWeight.w900);

  static const text18gray = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: Colors.white54,
    fontStyle: FontStyle.italic,
  );

  static const text30 = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.w700,
    fontFamily: KTitleBookFontFamily,
  );
}
