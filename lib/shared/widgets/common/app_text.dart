import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  final String text;
  final Color? color;
  final TextStyle style;
  final TextAlign align;
  final FontWeight? fontWeight;
  final double? letterSpacing;
  final double? lineHeight;
  final int? maxLines;
  final TextOverflow? overflow;

  const AppText(
    this.text, {
    required this.style,
    super.key,
    this.color,
    this.align = TextAlign.start,
    this.fontWeight,
    this.letterSpacing,
    this.lineHeight,
    this.maxLines,
    this.overflow,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: align,
      style: style,
      maxLines: maxLines,
      overflow: overflow,
    );
  }
}
