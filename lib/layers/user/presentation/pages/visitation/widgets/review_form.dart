import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:pookaboo/layers/auth/presentation/bloc/auth_bloc.dart';
import 'package:pookaboo/layers/toilet/data/models/toilet.dart';
import 'package:pookaboo/layers/toilet/data/models/visitation.dart';
import 'package:pookaboo/layers/toilet/presentation/pages/map/widgets/bottom_sheet/bottom_sheet_main.dart';
import 'package:pookaboo/layers/toilet/presentation/pages/map/widgets/bottom_sheet/button.dart';
import 'package:pookaboo/layers/toilet/presentation/pages/map/widgets/bottom_sheet/sign_in_message.dart';
import 'package:pookaboo/layers/user/presentation/pages/visitation/widgets/review_form_bottom_sheet/comment_form.dart';
import 'package:pookaboo/layers/user/presentation/pages/visitation/widgets/review_form_bottom_sheet/main.dart';
import 'package:pookaboo/layers/user/presentation/pages/visitation/widgets/review_form_bottom_sheet/header.dart';
import 'package:pookaboo/layers/user/presentation/pages/visitation/widgets/review_form_bottom_sheet/rating_form.dart';
import 'package:pookaboo/mocks/image.dart';
import 'package:pookaboo/shared/constant/images.dart';
import 'package:pookaboo/shared/styles/dimens.dart';
import 'package:pookaboo/shared/styles/palette.dart';
import 'package:pookaboo/shared/utils/logging/log.dart';
import 'package:pookaboo/shared/widgets/common/app_button.dart';
import 'package:pookaboo/shared/widgets/common/app_divider.dart';
import 'package:pookaboo/shared/widgets/common/app_drag_handle_bar.dart';
import 'package:pookaboo/shared/widgets/common/app_spacer_v.dart';
import 'package:pookaboo/shared/widgets/common/app_text.dart';
import 'package:pookaboo/shared/widgets/review_header.dart';

class ReviewForm extends StatefulWidget {
  final Visitation visitation;

  const ReviewForm({super.key, required this.visitation});

  @override
  State<ReviewForm> createState() => _ReviewFormState();
}

class _ReviewFormState extends State<ReviewForm> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              vertical: Dimens.space30, horizontal: Dimens.space20),
          child: Row(
            children: [
              Expanded(child: Container()),
              AppText("리뷰 작성", style: Theme.of(context).textTheme.bodyLarge!),
              Expanded(child: Container()),
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: SvgPicture.asset(Images.close),
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: Dimens.space20),
          child: Column(
            children: [
              ReviewHeader(
                  image: mockImage,
                  name: widget.visitation.toilet.name,
                  date: widget.visitation.created_at),
              const AppSpacerV(),
              AppDivider(height: Dimens.space1, color: Palette.coolGrey10),
              const AppSpacerV(),
              const RatingForm(),
              const AppSpacerV()
            ],
          ),
        ),
        AppSpacerV(value: Dimens.space30),
        const AppDivider(),
        AppSpacerV(value: Dimens.space30),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: Dimens.space20),
          child: AppText("의견", style: Theme.of(context).textTheme.bodyMedium!),
        ),
        AppSpacerV(value: Dimens.space30),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: Dimens.space20),
          child: const CommentForm(),
        ),
        AppSpacerV(value: Dimens.space30),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: Dimens.space20),
          child: AppButton(title: "리뷰 작성", onPressed: () {}),
        ),
        AppSpacerV(value: Dimens.space50),
      ],
    ));
  }
}
