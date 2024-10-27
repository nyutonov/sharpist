import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../color/app_color.dart';

class TextWidget extends StatelessWidget {
  final String text;
  final EdgeInsets margin;
  final double fontSize;
  final FontWeight fontWeight;
  final double height;
  final Color color;
  final int? maxLines;
  final TextAlign? align;

  const TextWidget({
    super.key,
    required this.text,
    this.margin = EdgeInsets.zero,
    this.fontSize = 14,
    this.fontWeight = FontWeight.w400,
    this.height = 0,
    this.color = AppColor.gray600,
    this.maxLines,
    this.align,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      margin: margin,
      child: Text(
        text,
        style: GoogleFonts.outfit(
          fontWeight: fontWeight,
          color: color,
          height: height,
          fontSize: fontSize
        ),
        textAlign: align ?? TextAlign.center,
        maxLines: maxLines,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
