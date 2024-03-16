import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pookaboo/layers/toilet/data/models/review.dart';
import 'package:pookaboo/layers/toilet/data/models/toilet.dart';
import 'package:pookaboo/layers/toilet/presentation/bloc/review/review_bloc.dart';
import 'package:pookaboo/shared/constant/enum.dart';
import 'package:pookaboo/shared/styles/dimens.dart';
import 'package:pookaboo/shared/styles/palette.dart';
import 'package:pookaboo/shared/utils/helper/time_helper.dart';
import 'package:pookaboo/shared/utils/logging/log.dart';
import 'package:pookaboo/shared/widgets/app_rating_card.dart';
import 'package:pookaboo/shared/widgets/app_star_point.dart';
import 'package:pookaboo/shared/widgets/common/app_divider.dart';
import 'package:pookaboo/shared/widgets/common/app_spacer_h.dart';
import 'package:pookaboo/shared/widgets/common/app_spacer_v.dart';
import 'package:pookaboo/shared/widgets/common/app_text.dart';

class RatingForm extends StatefulWidget {
  const RatingForm({super.key});

  @override
  State<RatingForm> createState() => _RatingFormState();
}

class _RatingFormState extends State<RatingForm> {
  late final List<Map<String, dynamic>> _ratings = [];

  @override
  void initState() {
    super.initState();

    for (var scoreType in RatingScoreType.values) {
      _ratings.add({
        "emoji": scoreType.emoji,
        "title": scoreType.name,
        "subTitle": scoreType.description,
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ..._ratings.map((rating) {
          return Padding(
            padding: EdgeInsets.symmetric(vertical: Dimens.space12),
            child: Column(
              children: [
                AppRatingCard(
                    title: rating['title'],
                    subTitle: rating['subTitle'],
                    emoji: rating['emoji']),
                const AppSpacerV(),
                Padding(
                  padding: EdgeInsets.only(left: Dimens.space50),
                  child: AppStarScore(
                      iconSize: 30,
                      onChange: (int v) {
                        log.d(v);
                      }),
                ),
              ],
            ),
          );
        })
      ],
    );
  }
}
