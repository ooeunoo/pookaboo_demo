import 'package:flutter/material.dart';
import 'package:pookaboo/layers/data/models/review/review.dart';
import 'package:pookaboo/layers/data/models/toilet/toilet.dart';
import 'package:pookaboo/shared/styles/dimens.dart';
import 'package:pookaboo/shared/styles/palette.dart';
import 'package:pookaboo/shared/utils/helper/time_helper.dart';
import 'package:pookaboo/shared/widgets/app_rating_row.dart';
import 'package:pookaboo/shared/widgets/common/app_divider.dart';
import 'package:pookaboo/shared/widgets/common/app_spacer_v.dart';
import 'package:pookaboo/shared/widgets/common/app_text.dart';

class AppReviewCard extends StatelessWidget {
  final Review review;
  final int? maxLine;

  const AppReviewCard({super.key, required this.review, this.maxLine});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppRatingRow(
            rating: Rating(
                cleanliness: review.cleanliness,
                safety: review.safety,
                convenience: review.convenience,
                management: review.management)),
        AppSpacerV(
          value: Dimens.space20,
        ),
        AppText(review.comment,
            maxLines: maxLine ?? 3,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.bodyMedium!),
        AppSpacerV(
          value: Dimens.space20,
        ),
        Row(
          children: [
            AppText(
                "${review.user!.nickname ?? review.user!.name}﹒${parseAndFormatDateTime(review.created_at)}",
                style: Theme.of(context).textTheme.labelMedium!),
          ],
        ),
      ],
    );
  }
}
