import 'package:flutter/material.dart';
import 'package:pookaboo/shared/styles/dimens.dart';
import 'package:pookaboo/shared/styles/palette.dart';

class AppDivider extends StatelessWidget {
  final Color? color;
  final double? height;

  const AppDivider({super.key, this.color, this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: color ?? Palette.dividerBackground,
        height: height ?? Dimens.space16);
  }
}
