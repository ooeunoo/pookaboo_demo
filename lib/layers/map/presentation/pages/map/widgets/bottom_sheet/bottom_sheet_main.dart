import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pookaboo/layers/auth/presentation/bloc/auth_bloc.dart';
import 'package:pookaboo/layers/map/data/models/toilet.dart';
import 'package:pookaboo/layers/map/presentation/pages/map/widgets/bottom_sheet/button.dart';
import 'package:pookaboo/layers/map/presentation/pages/map/widgets/bottom_sheet/header.dart';
import 'package:pookaboo/layers/map/presentation/pages/map/widgets/bottom_sheet/location.dart';
import 'package:pookaboo/layers/map/presentation/pages/map/widgets/bottom_sheet/property.dart';
import 'package:pookaboo/layers/map/presentation/pages/map/widgets/bottom_sheet/rating.dart';
import 'package:pookaboo/layers/map/presentation/pages/map/widgets/bottom_sheet/tab_bar_view.dart';
import 'package:pookaboo/shared/styles/dimens.dart';
import 'package:pookaboo/shared/widgets/app_spacer_v.dart';
import 'package:blur/blur.dart';

class BottomSheetMain extends StatefulWidget {
  final bool isExpand;
  final Toilet toilet;

  const BottomSheetMain({
    super.key,
    required this.isExpand,
    required this.toilet,
  });

  @override
  _BottomSheetMainState createState() => _BottomSheetMainState();
}

class _BottomSheetMainState extends State<BottomSheetMain> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: Dimens.space20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ToiletBottomSheetHeader(widget.toilet),
              const AppSpacerV(),
              ToiletBottomSheetLocation(
                toilet: widget.toilet,
              ),
              const AppSpacerV(),
              // isExpand일 경우, ...
              if (widget.isExpand) ...[_expandItems(widget.toilet)]
            ],
          ),
        ),
        // Divider Padding 때문에 분리함
        if (widget.isExpand) ...[ToiletBottomSeetTabBarView(widget.toilet)]
      ],
    );
  }

  Widget _expandItems(Toilet toilet) {
    return Column(
      children: [
        ToiletBottomSheetRating(toilet),
        const AppSpacerV(),
        ToiletBottomSheetProperty(toilet),
        const AppSpacerV(),
      ],
    );
  }
}
