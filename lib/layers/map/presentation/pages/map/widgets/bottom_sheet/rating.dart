import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pookaboo/shared/constant/images.dart';
import 'package:pookaboo/shared/widgets/app_spacer_h.dart';
import 'package:pookaboo/shared/widgets/app_text.dart';

class ToiletBottomSheetRating extends StatelessWidget {
  const ToiletBottomSheetRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      SvgPicture.asset(Images.star),
      const AppSpacerH(),
      AppText("3.0(2)", style: Theme.of(context).textTheme.labelMedium!),
    ]);
  }
}
