import 'package:flutter/material.dart';
import 'package:pookaboo/shared/styles/dimens.dart';
import 'package:pookaboo/shared/styles/palette.dart';
import 'package:pookaboo/shared/widgets/common/app_divider.dart';
import 'package:pookaboo/shared/widgets/common/app_spacer_h.dart';
import 'package:pookaboo/shared/widgets/common/app_spacer_v.dart';
import 'package:pookaboo/shared/widgets/common/app_text.dart';

class ReviewDone extends StatefulWidget {
  const ReviewDone({super.key});

  @override
  State<ReviewDone> createState() => _ReviewDoneState();
}

class _ReviewDoneState extends State<ReviewDone> {
  List<Map<String, dynamic>> reviews = [
    {
      "id": 1,
      "image":
          "https://cdn.pixabay.com/photo/2014/02/13/11/56/wc-265278_1280.jpg",
      "name": "송파 파크하이오",
      "date": "2023.02.03",
      "ratings": {'clean': 0, 'convenience': 1, 'management': 2, 'safety': 3},
      "comment": "너무 좋아요,너무 좋아요너무 좋아요너무 좋아요너무 좋아요너무 좋아요너무 좋아요"
    },
    {
      "id": 2,
      "image":
          "https://cdn.pixabay.com/photo/2016/09/12/23/35/urinal-1666092_1280.jpg",
      "name": "청량리 현대아파트",
      "date": "2023.04.03",
      "ratings": {'clean': 0, 'convenience': 1, 'management': 2, 'safety': 3},
      "comment": "너무 좋아요,너무 좋아요너무 좋아요너무 좋아요너무 좋아요너무 좋아요너무 좋아요"
    },
    {
      "id": 3,
      "image":
          "https://cdn.pixabay.com/photo/2013/05/14/16/56/wc-111092_1280.jpg",
      "name": "동대문 경찰서",
      "date": "2023.03.03",
      "ratings": {'clean': 0, 'convenience': 1, 'management': 2, 'safety': 3},
      "comment":
          "너무 좋아요,너무 좋아요너무 좋아요너무 좋아요너무 좋아요너무 좋아요너무 좋아요너무 좋아요,너무 좋아요너무 좋아요너무 좋아요너무 좋아요너무 좋아요너무 좋아요너무 좋아요,너무 좋아요너무 좋아요너무 좋아요너무 좋아요너무 좋아요너무 좋아요너무 좋아요,너무 좋아요너무 좋아요너무 좋아요너무 좋아요너무 좋아요너무 좋아요"
    }
  ];

  Widget _buildRatingLabel(String label, int rating, {bool divider = true}) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppText("$label ", style: Theme.of(context).textTheme.labelLarge!),
        AppText("$rating",
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
        _buildRatingLabel("청결도", ratings['clean']),
        _buildRatingLabel("편의성", ratings['convenience']),
        _buildRatingLabel("관리도", ratings['management']),
        _buildRatingLabel("안전성", ratings['safety'], divider: false),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: reviews.length * 2 - 1, // Divider를 추가하기 위해 항목 수를 2배
            itemBuilder: (context, index) {
              if (index.isOdd) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: Dimens.space20),
                  child: AppDivider(
                    color: Palette.coolGrey08,
                    height: Dimens.space1,
                  ),
                ); // 홀수 인덱스에 Divider를 추가합니다.
              }

              final reviewIndex = index ~/ 2;
              final review = reviews[reviewIndex];

              return Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: Dimens.space20, vertical: Dimens.space20),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(6.67),
                          child: Image.network(
                            review['image'],
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
                              review['name'],
                              style: Theme.of(context).textTheme.bodySmall!,
                            ),
                            const AppSpacerV(),
                            AppText(
                              "${review['date']} 방문",
                              style: Theme.of(context).textTheme.labelMedium!,
                            ),
                            const AppSpacerV(),
                          ],
                        ),
                      ],
                    ),
                    AppSpacerV(value: Dimens.space16),
                    _buildRatings(review['ratings']),
                    AppSpacerV(
                      value: Dimens.space16,
                    ),
                    AppText(
                      review['comment'],
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
        ],
      ),
    );
  }
}
