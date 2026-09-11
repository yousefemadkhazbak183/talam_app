import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyles {
  // Headings
  static TextStyle get h1 =>
      GoogleFonts.outfit(fontSize: 32.sp, fontWeight: FontWeight.bold);

  static TextStyle get h2 =>
      GoogleFonts.outfit(fontSize: 24.sp, fontWeight: FontWeight.bold);

  static TextStyle get h3 =>
      GoogleFonts.outfit(fontSize: 20.sp, fontWeight: FontWeight.w600);

  // Body
  static TextStyle get bodyLarge =>
      GoogleFonts.outfit(fontSize: 18.sp, fontWeight: FontWeight.normal);

  static TextStyle get bodyMedium =>
      GoogleFonts.outfit(fontSize: 16.sp, fontWeight: FontWeight.normal);

  static TextStyle get bodySmall =>
      GoogleFonts.outfit(fontSize: 14.sp, fontWeight: FontWeight.normal);

  // Labels & Captions
  static TextStyle get labelLarge =>
      GoogleFonts.outfit(fontSize: 14.sp, fontWeight: FontWeight.w500);

  static TextStyle get labelMedium =>
      GoogleFonts.outfit(fontSize: 12.sp, fontWeight: FontWeight.w500);

  static TextStyle get caption =>
      GoogleFonts.outfit(fontSize: 10.sp, fontWeight: FontWeight.normal);
}
