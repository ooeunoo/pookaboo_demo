import 'package:flutter/material.dart';
import 'package:pookaboo/layers/toilet/data/models/toilet.dart';
import 'package:pookaboo/layers/toilet/presentation/pages/map/widgets/bottom_sheet/header.dart';
import 'package:pookaboo/layers/toilet/presentation/pages/map/widgets/bottom_sheet/information.dart';
import 'package:pookaboo/layers/toilet/presentation/pages/map/widgets/bottom_sheet/location.dart';
import 'package:pookaboo/layers/toilet/presentation/pages/map/widgets/bottom_sheet/navigation_guide.dart';
import 'package:pookaboo/shared/styles/dimens.dart';
import 'package:pookaboo/shared/styles/palette.dart';
import 'package:pookaboo/shared/widgets/app_divider.dart';
import 'package:pookaboo/shared/widgets/app_spacer_v.dart';
import 'package:pookaboo/shared/widgets/app_text.dart';

class ToiletNavigationModal extends StatelessWidget {
  final Toilet toilet;
  final int time;

  const ToiletNavigationModal(
      {super.key, required this.toilet, required this.time});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: Dimens.space20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: Dimens.space20),
            child: ToiletBottomSheetHeader(toilet),
          ),
          AppSpacerV(value: Dimens.space12),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: Dimens.space20,
            ),
            child: ToiletBottomSheetLocation(toilet: toilet, time: time),
          ),
          AppSpacerV(value: Dimens.space12),
          AppDivider(height: Dimens.space1, color: Palette.coolGrey10),
          AppSpacerV(value: Dimens.space12),
          Padding(
              padding: EdgeInsets.symmetric(
                horizontal: Dimens.space20,
              ),
              child: const NavigationGuide()),
        ],
      ),
    );
  }
}
