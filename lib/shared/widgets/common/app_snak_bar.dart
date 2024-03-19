// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:pookaboo/shared/extension/context.dart';
import 'package:pookaboo/shared/styles/dimens.dart';
import 'package:pookaboo/shared/styles/palette.dart';

SnackBar AppSnackBar(BuildContext context, Widget content,
    {int? duration, double? height}) {
  return SnackBar(
    backgroundColor: Palette.coolGrey11,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(Dimens.space12),
    ),
    behavior: SnackBarBehavior.floating,
    elevation: 0,
    duration: Duration(seconds: duration ?? 2),
    margin: EdgeInsets.only(
        bottom: height ?? 0, left: Dimens.space20, right: Dimens.space20),
    // width: context.widthInPercent(40),
    content: content,
  );
}
