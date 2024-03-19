import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:pookaboo/injection.dart';
import 'package:pookaboo/layers/data/models/toilet/toilet.dart';
import 'package:pookaboo/layers/data/models/visitation/visitation.dart';
import 'package:pookaboo/layers/domain/entities/review/create_review_params.dart';
import 'package:pookaboo/layers/presentation/bloc/review/review_bloc.dart';
import 'package:pookaboo/layers/presentation/bloc/visitation/visitation_bloc.dart';
import 'package:pookaboo/mocks/image.dart';
import 'package:pookaboo/shared/constant/enum.dart';
import 'package:pookaboo/shared/constant/assets.dart';
import 'package:pookaboo/shared/extension/context.dart';
import 'package:pookaboo/shared/service/storage/secure_storage.dart';
import 'package:pookaboo/shared/styles/dimens.dart';
import 'package:pookaboo/shared/styles/palette.dart';
import 'package:pookaboo/shared/utils/logging/log.dart';
import 'package:pookaboo/shared/widgets/app_rating_card.dart';
import 'package:pookaboo/shared/widgets/app_star_point.dart';
import 'package:pookaboo/shared/widgets/common/app_button.dart';
import 'package:pookaboo/shared/widgets/common/app_divider.dart';
import 'package:pookaboo/shared/widgets/common/app_spacer_v.dart';
import 'package:pookaboo/shared/widgets/common/app_text.dart';
import 'package:pookaboo/shared/widgets/common/app_text_input.dart';
import 'package:pookaboo/shared/widgets/app_review_header.dart';

class ReviewForm extends StatefulWidget {
  final String userId;
  final Visitation visitation;

  const ReviewForm({super.key, required this.visitation, required this.userId});

  @override
  State<ReviewForm> createState() => _ReviewFormState();
}

class _ReviewFormState extends State<ReviewForm> {
  Rating _ratingController =
      Rating(cleanliness: 0, safety: 0, convenience: 0, management: 0);
  final _commentController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _commentController.dispose();
  }

  void _onChangeRatingScore(RatingScoreType key, double value) {
    switch (key) {
      case RatingScoreType.cleanliness:
        _ratingController = _ratingController.copyWith(cleanliness: value);
      case RatingScoreType.convenience:
        _ratingController = _ratingController.copyWith(convenience: value);
      case RatingScoreType.management:
        _ratingController = _ratingController.copyWith(management: value);
      case RatingScoreType.safety:
        _ratingController = _ratingController.copyWith(safety: value);
    }
  }

  void _onSave() async {
    CreateReviewParams params = CreateReviewParams(
        visitationId: widget.visitation.id,
        toiletId: widget.visitation.toilet.id,
        userId: widget.userId,
        cleanliness: _ratingController.cleanliness,
        convenience: _ratingController.convenience,
        safety: _ratingController.safety,
        management: _ratingController.management,
        comment: _commentController.text);
    if (mounted) {
      context.read<ReviewBloc>().add(CreateToiletReviewEvent(params: params));
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ReviewBloc, ReviewState>(listener: ((context, state) {
      if (state is SuccessCreateToiletReviewState) {
        context
            .read<VisitataionBloc>()
            .add(GetToiletVisitationsByUserIdEvent(userId: widget.userId));
        context.back();
      }
    }), builder: (context, state) {
      return SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /////////////////////////////////
          ///  Header
          /////////////////////////////////
          Padding(
            padding: EdgeInsets.symmetric(
                vertical: Dimens.space30, horizontal: Dimens.space20),
            child: Row(
              children: [
                Expanded(child: Container()),
                AppText("리뷰 작성", style: Theme.of(context).textTheme.bodyLarge!),
                Expanded(child: Container()),
                InkWell(
                  splashColor: Colors.transparent,
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: SvgPicture.asset(Assets.close),
                )
              ],
            ),
          ),
          /////////////////////////////////
          ///  Header & RATING
          /////////////////////////////////
          Padding(
            padding: EdgeInsets.symmetric(horizontal: Dimens.space20),
            child: Column(
              children: [
                AppReviewHeader(
                    image: mockImage,
                    name: widget.visitation.toilet.name,
                    date: widget.visitation.created_at),
                const AppSpacerV(),
                AppDivider(height: Dimens.space1, color: Palette.coolGrey10),
                const AppSpacerV(),
                _ratingsStarSelectForm(_onChangeRatingScore),
                const AppSpacerV()
              ],
            ),
          ),
          /////////////////////////////////
          ///  DIVIDER
          /////////////////////////////////
          AppSpacerV(value: Dimens.space30),
          const AppDivider(),
          AppSpacerV(value: Dimens.space30),
          /////////////////////////////////
          ///  COMMENT & BUTTON
          /////////////////////////////////
          Padding(
            padding: EdgeInsets.symmetric(horizontal: Dimens.space20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppText("의견", style: Theme.of(context).textTheme.bodyMedium!),
                AppSpacerV(value: Dimens.space30),
                _commentTextInputForm(_commentController),
                AppSpacerV(value: Dimens.space30),
                AppButton(title: "리뷰 작성", onPressed: _onSave),
                AppSpacerV(value: Dimens.space30),
              ],
            ),
          ),
        ],
      ));
    });
  }

  Widget _commentTextInputForm(TextEditingController controller) {
    return AppTextInput(
      hintText: '화장실을 사용하면서 좋았던 점 또는 아쉬웠던 점을 공유해주세요.',
      keyboardType: TextInputType.text,
      controller: controller,
      minLine: 4,
      maxLine: 10,
      textAlign: TextAlign.start,
    );
  }

  Widget _ratingsStarSelectForm(
      void Function(RatingScoreType, double) onChangeRatingScore) {
    return Column(
      children: [
        ...RatingScoreType.values.map((value) {
          return Padding(
            padding: EdgeInsets.symmetric(vertical: Dimens.space12),
            child: Column(
              children: [
                AppRatingCard(
                    name: value.name,
                    description: value.description,
                    emoji: value.emoji),
                const AppSpacerV(),
                Padding(
                  padding: EdgeInsets.only(left: Dimens.space50),
                  child: AppStarScore(
                      iconSize: 30,
                      onChange: (int v) {
                        onChangeRatingScore(value, v.toDouble());
                      }),
                ),
              ],
            ),
          );
        }),
      ],
    );
  }
}
