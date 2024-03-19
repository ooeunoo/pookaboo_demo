import 'package:flutter/material.dart';
import 'package:pookaboo/layers/data/models/toilet/toilet.dart';
import 'package:pookaboo/layers/data/models/visitation/visitation.dart';
import 'package:pookaboo/shared/constant/assets.dart';
import 'package:pookaboo/shared/styles/dimens.dart';
import 'package:pookaboo/shared/utils/helper/time_helper.dart';
import 'package:pookaboo/shared/widgets/common/app_chip.dart';
import 'package:pookaboo/shared/widgets/common/app_spacer_h.dart';
import 'package:pookaboo/shared/widgets/common/app_spacer_v.dart';
import 'package:pookaboo/shared/widgets/common/app_text.dart';

class AppReviewHeader extends StatefulWidget {
  final String image;
  final String name;
  final DateTime date;
  final bool? reviewed;

  const AppReviewHeader(
      {super.key,
      required this.image,
      required this.name,
      required this.date,
      this.reviewed});

  @override
  State<AppReviewHeader> createState() => _AppReviewHeaderState();
}

class _AppReviewHeaderState extends State<AppReviewHeader> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(6.67),
              child: Image.network(
                widget.image,
                width: Dimens.imageW,
                height: Dimens.imageW,
                fit: BoxFit.cover,
              ),
            ),
            AppSpacerH(
              value: Dimens.space12,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppText(
                  widget.name,
                  style: Theme.of(context).textTheme.bodySmall!,
                ),
                const AppSpacerV(),
                AppText(
                  "${parseAndFormatDateTime(widget.date)} 방문",
                  style: Theme.of(context).textTheme.labelMedium!,
                ),
              ],
            ),
          ],
        ),
        if (widget.reviewed != null && widget.reviewed!) ...{
          Align(
            alignment: Alignment.topRight,
            child: AppText("리뷰 작성됨",
                style: Theme.of(context).textTheme.labelMedium!),
          )
        }
      ],
    );
  }
}
