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
  final double offset;
  final Toilet toilet;

  const BottomSheetMain(
      {super.key, required this.offset, required this.toilet});

  @override
  _BottomSheetMainState createState() => _BottomSheetMainState();
}

class _BottomSheetMainState extends State<BottomSheetMain> {
  bool isExtend = false;
  Toilet? toilet;

  @override
  Widget build(BuildContext context) {
    isExtend = widget.offset > 0.4;
    toilet = widget.toilet;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: Dimens.space20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ToiletBottomSheetHeader(toilet!),
              const AppSpacerV(),
              ToiletBottomSheetLocation(toilet!),
              const AppSpacerV(),
              // isExtend일 경우, ...
              if (isExtend) ...[_expandItems()]
            ],
          ),
        ),
        // Divider Padding 때문에 분리함
        if (isExtend) ...[ToiletBottomSeetTabBarView(toilet!)]
      ],
    );
  }

  Widget _expandItems() {
    return Column(
      children: [
        ToiletBottomSheetRating(toilet!),
        const AppSpacerV(),
        ToiletBottomSheetProperty(toilet!),
        const AppSpacerV(),
      ],
    );
  }
}
