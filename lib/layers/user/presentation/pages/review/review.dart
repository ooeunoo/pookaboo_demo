import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pookaboo/injection.dart';
import 'package:pookaboo/layers/toilet/data/models/review.dart';
import 'package:pookaboo/mocks/image.dart';
import 'package:pookaboo/shared/service/storage/secure_storage.dart';
import 'package:pookaboo/shared/styles/dimens.dart';
import 'package:pookaboo/shared/styles/palette.dart';
import 'package:pookaboo/shared/widgets/common/app_divider.dart';
import 'package:pookaboo/shared/widgets/common/app_spacer_v.dart';
import 'package:pookaboo/shared/widgets/common/app_text.dart';
import 'package:pookaboo/shared/widgets/review_header.dart';

class ReviewPage extends StatefulWidget {
  final String userId;

  const ReviewPage({super.key, required this.userId});

  @override
  State<ReviewPage> createState() => _ReviewPageState();
}

class _ReviewPageState extends State<ReviewPage> {
  final SecureStorage _secureStorage = sl<SecureStorage>();

  final List<Review> _reviews = [];

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
