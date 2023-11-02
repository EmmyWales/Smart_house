import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_house/utils/colors.dart';

class BaseText extends StatelessWidget {
  final String text;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? color;

  const BaseText({
    required this.text,
    required this.fontSize,
    required this.fontWeight,
    required this.color,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.poppins(
        color: color ?? Appcolor.black,
        fontSize: fontSize ?? 18,
        fontWeight: fontWeight ?? FontWeight.w500,
      ),
    );
  }
}
