import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';

class CustomText extends StatelessWidget {
  final String data;
  final TextStyle? style;
  final TextAlign? textAlign;

  final Locale? locale;

  final TextOverflow? overflow;
  final double? textScaleFactor;
  final int? maxLines;

  const CustomText(
    this.data, {
    Key? key,
    this.style,
    this.textAlign,
    this.locale,
    this.overflow,
    this.textScaleFactor,
    this.maxLines,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      data.tr,
      key: key,
      style: style,
      textAlign: textAlign,
      locale: locale,
      overflow: overflow,
      textScaleFactor: textScaleFactor,
      maxLines: maxLines,
    );
  }
}
