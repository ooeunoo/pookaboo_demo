import 'package:flutter/material.dart';
import 'package:pookaboo/layers/toilet/data/models/toilet.dart';
import 'package:pookaboo/layers/toilet/data/models/visitation.dart';
import 'package:pookaboo/shared/styles/dimens.dart';
import 'package:pookaboo/shared/utils/helper/time_helper.dart';
import 'package:pookaboo/shared/widgets/common/app_spacer_h.dart';
import 'package:pookaboo/shared/widgets/common/app_spacer_v.dart';
import 'package:pookaboo/shared/widgets/common/app_text.dart';

class ReviewHeader extends StatelessWidget {
  final String image;
  final String name;
  final DateTime date;

  const ReviewHeader({
    super.key,
    required this.image,
    required this.name,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(6.67),
          child: Image.network(
            image,
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
              name,
              style: Theme.of(context).textTheme.bodySmall!,
            ),
            const AppSpacerV(),
            AppText(
              "${parseAndFormatDateTime(date)} 방문",
              style: Theme.of(context).textTheme.labelMedium!,
            ),
            const AppSpacerV(),
          ],
        ),
      ],
    );
  }
}
