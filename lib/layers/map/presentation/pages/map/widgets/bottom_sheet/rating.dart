import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pookaboo/layers/map/data/models/toilet.dart';
import 'package:pookaboo/shared/constant/images.dart';
import 'package:pookaboo/shared/styles/palette.dart';
import 'package:pookaboo/shared/widgets/app_spacer_h.dart';
import 'package:pookaboo/shared/widgets/app_text.dart';

class ToiletBottomSheetRating extends StatefulWidget {
  final Toilet toilet;

  const ToiletBottomSheetRating(this.toilet, {super.key});

  @override
  State<ToiletBottomSheetRating> createState() =>
      _ToiletBottomSheetRatingState();
}

class _ToiletBottomSheetRatingState extends State<ToiletBottomSheetRating> {
  late String rating;
  late String totalReviews;

  @override
  void initState() {
    super.initState();
    rating = Rating.getAverageRating(widget.toilet.rating!).toString();
    totalReviews = widget.toilet.reviews.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      SvgPicture.asset(Images.star),
      const AppSpacerH(),
      AppText("$rating ($totalReviews)",
          style: Theme.of(context).textTheme.labelMedium!),
      const AppSpacerH(),
      SvgPicture.asset(
        Images.arrowRight,
        colorFilter: const ColorFilter.mode(
          Palette.coolGrey05,
          BlendMode.srcIn,
        ),
      ),
    ]);
  }
}
