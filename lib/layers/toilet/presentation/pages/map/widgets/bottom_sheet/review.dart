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
import 'package:pookaboo/shared/widgets/common/app_divider.dart';
import 'package:pookaboo/shared/widgets/common/app_spacer_h.dart';
import 'package:pookaboo/shared/widgets/common/app_spacer_v.dart';
import 'package:pookaboo/shared/widgets/common/app_text.dart';

class ToiletBottomSheetReview extends StatefulWidget {
  final Toilet toilet;

  const ToiletBottomSheetReview(this.toilet, {super.key});

  @override
  State<ToiletBottomSheetReview> createState() =>
      _ToiletBottomSheetReviewState();
}

class _ToiletBottomSheetReviewState extends State<ToiletBottomSheetReview> {
  late final List<Map<String, dynamic>> _ratings = [];
  late final List<Map<String, dynamic>> _reviews = [];

  @override
  void initState() {
    super.initState();

    for (var scoreType in RatingScoreType.values) {
      double score = widget.toilet.rating?.toJson()[scoreType.key];
      _ratings.add({
        "emoji": scoreType.emoji,
        "title": scoreType.name,
        "subTitle": scoreType.description,
        'score': score.toStringAsFixed(1)
      });
    }
  }

  void _parseReviews(List<Review> reviews) {
    for (var review in reviews) {
      _reviews.add({
        "rating": {
          'cleanliness': review.cleanliness,
          'management': review.management,
          'convenience': review.convenience,
          'safety': review.safety,
        },
        "comment": review.comment,
        "user": review.user!.nickname ?? review.user!.name,
        'date': parseAndFormatDateTime(review.created_at),
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ReviewBloc, ReviewState>(
        listener: (context, state) async {
      if (state is LoadedToiletReviewsByToiletIdState) {
        _parseReviews(state.reviews);
      }
    }, builder: (context, state) {
      return Padding(
        padding: EdgeInsets.only(bottom: Dimens.space100),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          /////////////////////////////////////////////////////////////////////////////////
          ////// Rating
          /////////////////////////////////////////////////////////////////////////////////
          ..._ratings.map((rating) {
            return _rating(
              rating['emoji'] as String,
              rating['title'] as String,
              rating['subTitle'] as String,
              rating['score'] as String,
            );
          }),
          AppSpacerV(value: Dimens.space30),
          const AppDivider(),
          AppSpacerV(value: Dimens.space30),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: Dimens.space20),
            child: AppText("후기 ${_reviews.length}",
                style: Theme.of(context).textTheme.bodyMedium!),
          ),
          AppSpacerV(value: Dimens.space30),
          /////////////////////////////////////////////////////////////////////////////////
          ////// Review
          /////////////////////////////////////////////////////////////////////////////////
          ..._reviews.map((review) {
            return _review(
                review['rating'] as Map<String, double>,
                review['comment'] as String,
                review['user'] as String,
                review['date'] as String);
          })
        ]),
      );
    });
  }

  Widget _rating(String emoji, String title, String subTitle, String score) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: Dimens.space20, vertical: Dimens.space12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AppRatingCard(title: title, subTitle: subTitle, emoji: emoji),
          Row(
            children: [
              AppText('$score ⭐️',
                  style: Theme.of(context).textTheme.bodyMedium!),
            ],
          )
        ],
      ),
    );
  }

  Widget _review(
      Map<String, double> rating, String comment, String user, String date) {
    return Padding(
        padding: EdgeInsets.symmetric(
            horizontal: Dimens.space20, vertical: Dimens.space12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildRatings(rating),
            AppSpacerV(
              value: Dimens.space20,
            ),
            AppText(comment, style: Theme.of(context).textTheme.bodyMedium!),
            AppSpacerV(
              value: Dimens.space12,
            ),
            Row(
              children: [
                AppText("$user﹒$date",
                    style: Theme.of(context).textTheme.labelMedium!),
              ],
            ),
            AppSpacerV(
              value: Dimens.space12,
            ),
            AppDivider(color: Palette.coolGrey08, height: Dimens.space1),
          ],
        ));
  }

  Widget _buildRatingLabel(String label, double rating, {bool divider = true}) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppText("$label ", style: Theme.of(context).textTheme.labelLarge!),
        AppText(rating.toStringAsFixed(0),
            style: Theme.of(context).textTheme.labelLarge!.copyWith(
                  color: Palette.lemon03,
                )),
        if (divider) ...[
          const AppSpacerH(),
          AppText('|', style: Theme.of(context).textTheme.labelLarge!),
          const AppSpacerH(),
        ],
      ],
    );
  }

  Widget _buildRatings(Map<String, dynamic> ratings) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildRatingLabel("청결도", ratings['cleanliness']),
        _buildRatingLabel("편의성", ratings['convenience']),
        _buildRatingLabel("관리도", ratings['management']),
        _buildRatingLabel("안전성", ratings['safety'], divider: false),
      ],
    );
  }
}
