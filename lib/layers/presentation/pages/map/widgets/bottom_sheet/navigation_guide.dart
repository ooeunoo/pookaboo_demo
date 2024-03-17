import 'package:flutter/material.dart';
import 'package:pookaboo/shared/styles/dimens.dart';
import 'package:pookaboo/shared/styles/palette.dart';
import 'package:pookaboo/shared/widgets/common/app_spacer_h.dart';
import 'package:pookaboo/shared/widgets/common/app_text.dart';

class NavigationGuide extends StatelessWidget {
  const NavigationGuide({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      AppText('현재',
          style: Theme.of(context)
              .textTheme
              .labelMedium!
              .copyWith(color: Palette.skyblue01)),
      AppSpacerH(value: Dimens.space2),
      AppText('3명',
          style: Theme.of(context)
              .textTheme
              .labelMedium!
              .copyWith(color: Palette.skyblue01, fontWeight: FontWeight.w600)),
      // AppSpacerH(value: Dimens.space2),
      AppText('이 달려가고 있어요 💨',
          style: Theme.of(context)
              .textTheme
              .labelMedium!
              .copyWith(color: Palette.skyblue01)),
    ]);
  }
}
