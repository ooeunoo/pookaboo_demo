import 'package:flutter/material.dart';
import 'package:pookaboo/shared/extension/context.dart';
import 'package:pookaboo/shared/localization/generated/message.dart';
import 'package:pookaboo/shared/styles/dimens.dart';
import 'package:pookaboo/shared/styles/palette.dart';
import 'package:pookaboo/shared/styles/theme.dart';
import 'package:pookaboo/shared/widgets/common/app_spacer_h.dart';
import 'package:pookaboo/shared/widgets/common/app_text.dart';
import 'package:intl/intl.dart';

class AppButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final double? width;
  final Color? color;
  final Color? titleColor;
  final double? fontSize;
  final Color? splashColor;
  final Widget? image; // 이미지 추가
  final bool disable;

  const AppButton({
    super.key,
    required this.title,
    required this.onPressed,
    this.width,
    this.color,
    this.titleColor,
    this.fontSize,
    this.splashColor,
    this.image,
    this.disable = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: Dimens.space8),
      height: Dimens.buttonH,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(Dimens.space16)),
      child: TextButton(
        onPressed: disable ? null : onPressed,
        style: ButtonStyle(
            backgroundColor: color != null
                ? MaterialStateProperty.all(color)
                : (disable
                    ? MaterialStateProperty.all(Palette.coolGrey09)
                    : MaterialStateProperty.all(Palette.lemon01)),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(Dimens.space16)))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (image != null)
              Padding(
                padding: EdgeInsets.only(right: Dimens.space4),
                child: SizedBox(
                  width: Dimens.icon,
                  height: Dimens.icon,
                  child: image!,
                ),
              ),
            AppSpacerH(value: Dimens.space8),
            AppText(
              title,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: titleColor ??
                      (disable ? Palette.coolGrey06 : Palette.coolGrey12)),
              align: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
