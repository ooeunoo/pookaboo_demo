import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pookaboo/layers/toilet/data/models/review.dart';
import 'package:pookaboo/mocks/image.dart';
import 'package:pookaboo/shared/styles/dimens.dart';
import 'package:pookaboo/shared/styles/palette.dart';
import 'package:pookaboo/shared/widgets/common/app_divider.dart';
import 'package:pookaboo/shared/widgets/common/app_spacer_h.dart';
import 'package:pookaboo/shared/widgets/common/app_spacer_v.dart';
import 'package:pookaboo/shared/widgets/common/app_text.dart';
import 'package:pookaboo/shared/widgets/review_header.dart';

class ReviewPage extends StatefulWidget {
  const ReviewPage({super.key});

  @override
  State<ReviewPage> createState() => _ReviewPageState();
}

class _ReviewPageState extends State<ReviewPage> {
  final List<Review> _reviews = [
    // {
    //   "id": 1,
    //   "image":
    //       "https://cdn.pixabay.com/photo/2014/02/13/11/56/wc-265278_1280.jpg",
    //   "name": "송파 파크하이오",
    //   "date": "2023.02.03",
    //   "ratings": {'clean': 0, 'convenience': 1, 'management': 2, 'safety': 3},
    //   "comment": "너무 좋아요,너무 좋아요너무 좋아요너무 좋아요너무 좋아요너무 좋아요너무 좋아요"
    // },
    // {
    //   "id": 2,
    //   "image":
    //       "https://cdn.pixabay.com/photo/2016/09/12/23/35/urinal-1666092_1280.jpg",
    //   "name": "청량리 현대아파트",
    //   "date": "2023.04.03",
    //   "ratings": {'clean': 0, 'convenience': 1, 'management': 2, 'safety': 3},
    //   "comment": "너무 좋아요,너무 좋아요너무 좋아요너무 좋아요너무 좋아요너무 좋아요너무 좋아요"
    // },
    // {
    //   "id": 3,
    //   "image":
    //       "https://cdn.pixabay.com/photo/2013/05/14/16/56/wc-111092_1280.jpg",
    //   "name": "동대문 경찰서",
    //   "date": "2023.03.03",
    //   "ratings": {'clean': 0, 'convenience': 1, 'management': 2, 'safety': 3},
    //   "comment":
    //       "너무 좋아요,너무 좋아요너무 좋아요너무 좋아요너무 좋아요너무 좋아요너무 좋아요너무 좋아요,너무 좋아요너무 좋아요너무 좋아요너무 좋아요너무 좋아요너무 좋아요너무 좋아요,너무 좋아요너무 좋아요너무 좋아요너무 좋아요너무 좋아요너무 좋아요너무 좋아요,너무 좋아요너무 좋아요너무 좋아요너무 좋아요너무 좋아요너무 좋아요"
    // }
  ];

  // Widget _buildRatingLabel(String label, int rating, {bool divider = true}) {
  //   return Row(
  //     crossAxisAlignment: CrossAxisAlignment.start,
  //     children: [
  //       AppText("$label ", style: Theme.of(context).textTheme.labelLarge!),
  //       AppText("$rating",
  //           style: Theme.of(context).textTheme.labelLarge!.copyWith(
  //                 color: Palette.lemon03,
  //               )),
  //       if (divider) ...[
  //         const AppSpacerH(),
  //         AppText('|', style: Theme.of(context).textTheme.labelLarge!),
  //         const AppSpacerH(),
  //       ],
  //     ],
  //   );
  // }

  // Widget _buildRatings(Map<String, dynamic> ratings) {
  //   return Row(
  //     crossAxisAlignment: CrossAxisAlignment.start,
  //     children: [
  //       _buildRatingLabel("청결도", ratings['clean']),
  //       _buildRatingLabel("편의성", ratings['convenience']),
  //       _buildRatingLabel("관리도", ratings['management']),
  //       _buildRatingLabel("안전성", ratings['safety'], divider: false),
  //     ],
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: EdgeInsets.only(left: Dimens.space16),
          child: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () {
              context.pop();
            },
          ),
        ),
        title: AppText(
          '나의 리뷰',
          style: Theme.of(context).textTheme.bodyLarge!,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (_reviews.isEmpty) ...{
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: Dimens.space20, vertical: Dimens.space20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    AppText('리뷰 내역이 없습니다.',
                        style: Theme.of(context).textTheme.labelLarge!)
                  ],
                ),
              )
            } else ...{
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: _reviews.isEmpty ? 0 : _reviews.length * 2 - 1,
                itemBuilder: (context, index) {
                  if (index.isOdd) {
                    return Padding(
                      padding: EdgeInsets.symmetric(horizontal: Dimens.space20),
                      child: AppDivider(
                        color: Palette.coolGrey08,
                        height: Dimens.space1,
                      ),
                    );
                  }

                  final reviewIndex = index ~/ 2;
                  final review = _reviews[reviewIndex];

                  return Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: Dimens.space20, vertical: Dimens.space20),
                    child: Column(
                      children: [
                        ReviewHeader(
                            image: mockImage,
                            name: review.toilet!.name,
                            date: review.created_at),
                        AppSpacerV(value: Dimens.space16),
                        // _buildRatings(review['ratings']),
                        AppSpacerV(
                          value: Dimens.space16,
                        ),
                        AppText(
                          review.comment,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context).textTheme.bodySmall!,
                        ),
                        AppSpacerV(
                          value: Dimens.space16,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            InkWell(
                              child: AppText("삭제",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall!
                                      .copyWith(
                                          color: Palette.red01,
                                          fontWeight: FontWeight.w600)),
                            )
                          ],
                        )
                      ],
                    ),
                  );
                },
              ),
            }
          ],
        ),
      ),
    );
  }
}
