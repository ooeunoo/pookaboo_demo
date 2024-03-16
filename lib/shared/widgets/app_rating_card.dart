import 'package:flutter/material.dart';
import 'package:pookaboo/shared/constant/enum.dart';
import 'package:pookaboo/shared/styles/dimens.dart';
import 'package:pookaboo/shared/styles/palette.dart';
import 'package:pookaboo/shared/widgets/common/app_spacer_h.dart';
import 'package:pookaboo/shared/widgets/common/app_spacer_v.dart';
import 'package:pookaboo/shared/widgets/common/app_text.dart';

class AppRatingCard extends StatelessWidget {
  final String title;
  final String subTitle;
  final String emoji;

  const AppRatingCard(
      {super.key,
      required this.title,
      required this.subTitle,
      required this.emoji});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: Dimens.space40,
          height: Dimens.space40,
          decoration: BoxDecoration(
            color: const Color(0xff31363F),
            borderRadius: BorderRadius.circular(Dimens.space60),
          ),
          child: Center(
              child: AppText(emoji,
                  style: Theme.of(context).textTheme.bodySmall!)),
        ),
        const AppSpacerH(),
        SizedBox(
          width: Dimens.fullWidth(context) * 0.6,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppText(title, style: Theme.of(context).textTheme.bodySmall!),
              AppSpacerV(value: Dimens.space4),
              AppText(subTitle,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.labelMedium!),
            ],
          ),
        )
      ],
    );
  }
}
