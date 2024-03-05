import 'package:flutter/material.dart';
import 'package:pookaboo/shared/extension/context.dart';
import 'package:pookaboo/shared/localization/generated/message.dart';
import 'package:pookaboo/shared/styles/dimens.dart';
import 'package:pookaboo/shared/styles/palette.dart';
import 'package:pookaboo/shared/styles/theme.dart';
import 'package:pookaboo/shared/widgets/app_text.dart';
import 'package:intl/intl.dart';

class AppButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final double? width;
  final Color? color;
  final Color? titleColor;
  final double? fontSize;
  final Color? splashColor;
  final Image? image; // 이미지 추가

  const AppButton({
    super.key,
    required this.title,
    required this.onPressed,
    this.width,
    this.color,
    this.titleColor,
    this.fontSize,
    this.splashColor,
    this.image, // 이미지 추가
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints:
          BoxConstraints(minWidth: width ?? context.widthInPercent(100)),
      margin: EdgeInsets.symmetric(vertical: Dimens.space8),
      height: Dimens.buttonH,
      decoration: BoxDecorations(context).button.copyWith(
            color: color ?? Palette.button,
          ),
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: color ?? Palette.button,
          padding: EdgeInsets.symmetric(horizontal: Dimens.space24),
          shape: const BeveledRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(Dimens.cornerRadius),
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (image != null) // 이미지가 있는 경우에만 표시
              Padding(
                padding:
                    EdgeInsets.only(right: Dimens.space8), // 이미지와 텍스트 사이 간격 조정
                child: image!,
              ),
            AppText(
              title,
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(color: Palette.buttonText),
              align: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
