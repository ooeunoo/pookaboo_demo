import 'package:flutter/material.dart';
import 'package:pookaboo/layers/data/models/toilet/toilet.dart';
import 'package:pookaboo/layers/presentation/pages/map/widgets/bottom_sheet/information.dart';
import 'package:pookaboo/layers/presentation/pages/map/widgets/bottom_sheet/location_guide.dart';
import 'package:pookaboo/layers/presentation/pages/map/widgets/bottom_sheet/navigation_guide.dart';
import 'package:pookaboo/shared/styles/dimens.dart';
import 'package:pookaboo/shared/styles/palette.dart';
import 'package:pookaboo/shared/widgets/common/app_divider.dart';
import 'package:pookaboo/shared/widgets/common/app_spacer_v.dart';
import 'package:pookaboo/shared/widgets/common/app_text.dart';

class NavigationModal extends StatelessWidget {
  final Toilet toilet;
  final int time;

  const NavigationModal({super.key, required this.toilet, required this.time});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: Dimens.space20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /////////////////////////////////////////////
          ///  HEADER
          /////////////////////////////////////////////
          Padding(
            padding: EdgeInsets.symmetric(horizontal: Dimens.space20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppText(toilet.name,
                    style: Theme.of(context).textTheme.bodyLarge!)
              ],
            ),
          ),
          AppSpacerV(value: Dimens.space12),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: Dimens.space20,
            ),
            child: LocationGuide(toilet: toilet, time: time),
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
