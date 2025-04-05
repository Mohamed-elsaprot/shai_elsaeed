import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../const.dart';

abstract class Styles {
  static const Color primary = Color(0xff218838);
  static const Color lightGreen = Color(0xff5A9B36);
  static const Color buttonColor = Color(0xff28A745);
  static const Color red = Color(0xffFF6F61);
  static const Color starColor = Color(0xffFFD700);

  // static Color scaffoldWhiteColor = Colors.white;

  static Text text(String t,
      {double? size = 18,
      Color? color = Colors.black,
      FontWeight fontWeight = FontWeight.w500,
      TextOverflow? overflow,
      int? maxLines,
      TextDecoration? decoration,
      TextAlign? textAlign = TextAlign.start}) {
    return Text(
      t,
      style: TextStyle(
        decoration: decoration,
          fontSize: size!.sp,
          fontWeight: fontWeight,
          color: color,
          fontFamily: fontFamily),
      overflow: overflow,
      textAlign: textAlign,
      maxLines: maxLines,
    );
  }

  static Text subTitle(String t,
      {double? size = 9,
      Color color = Colors.black38,
      FontWeight fontWeight = FontWeight.w600,
      TextOverflow? overflow,
      TextAlign? textAlign = TextAlign.start}) {
    return Text(
      t,
      style: TextStyle(
          fontSize: size!.sp,
          fontWeight: fontWeight,
          color: color,
          fontFamily: fontFamily),
      overflow: overflow,
      textAlign: textAlign,
    );
  }
}
