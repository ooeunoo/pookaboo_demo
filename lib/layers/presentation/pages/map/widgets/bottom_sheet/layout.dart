import 'package:flutter/material.dart';
import 'package:pookaboo/layers/data/models/toilet/toilet.dart';
import 'package:pookaboo/layers/presentation/pages/map/widgets/bottom_sheet/location_guide.dart';
import 'package:pookaboo/layers/presentation/pages/map/widgets/bottom_sheet/property.dart';
import 'package:pookaboo/layers/presentation/pages/map/widgets/bottom_sheet/tab_bar_view.dart';
import 'package:pookaboo/shared/styles/dimens.dart';
import 'package:pookaboo/shared/widgets/common/app_spacer_v.dart';
import 'package:pookaboo/shared/widgets/common/app_text.dart';

class BottomSheetLayout extends StatefulWidget {
  final bool isExpand;
  final Toilet toilet;

  const BottomSheetLayout({
    super.key,
    required this.isExpand,
    required this.toilet,
  });

  @override
  _BottomSheetLayoutState createState() => _BottomSheetLayoutState();
}

class _BottomSheetLayoutState extends State<BottomSheetLayout> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: Dimens.space20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /////////////////////////////////////////////
              ///  HEADER
              /////////////////////////////////////////////
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppText(widget.toilet.name,
                      style: Theme.of(context).textTheme.bodyLarge!)
                ],
              ),
              const AppSpacerV(),
              /////////////////////////////////////////////
              ///  Location Guide
              /////////////////////////////////////////////
              LocationGuide(
                toilet: widget.toilet,
              ),
              const AppSpacerV(),
            ],
          ),
        ),
        // Divider Padding 때문에 분리함
        if (widget.isExpand) ...[
          Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: Dimens.space20),
                child: ToiletBottomSheetProperty(widget.toilet),
              ),
              const AppSpacerV(),
              ToiletBottomSeetTabBarView(widget.toilet)
            ],
          ),
        ]
      ],
    );
  }
}
