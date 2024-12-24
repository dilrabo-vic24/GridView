import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget customTextStyle({
  required String text,
  double? fontSize,
  FontWeight? fontWeight,
  Color? textColor,
}) {
  return Text(
    text,
    style: TextStyle(
      fontSize: fontSize ?? 14.sp,
      fontWeight: fontWeight ?? FontWeight.w700,
      color: textColor ?? Colors.black,
    ),
  );
}