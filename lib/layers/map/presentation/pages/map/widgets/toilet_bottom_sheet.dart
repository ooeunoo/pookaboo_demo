import 'package:flutter/material.dart';
import 'package:pookaboo/layers/map/data/models/toilet.dart';
import 'package:pookaboo/layers/map/presentation/pages/map/widgets/bottom_sheet/bottom_sheet_main.dart';
import 'package:pookaboo/layers/map/presentation/pages/map/widgets/bottom_sheet/button.dart';
import 'package:pookaboo/shared/styles/dimens.dart';
import 'package:pookaboo/shared/widgets/app_drag_handle_bar.dart';

class ToiletBottomSheet extends StatefulWidget {
  final ScrollController controller;
  final Toilet toilet;
  final double offset;

  const ToiletBottomSheet(
      {super.key,
      required this.offset,
      required this.toilet,
      required this.controller});

  @override
  State<ToiletBottomSheet> createState() => _ToiletBottomSheetState();
}

class _ToiletBottomSheetState extends State<ToiletBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: EdgeInsets.all(Dimens.space12),
            child: const AppDragHandleBar(),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: Dimens.space36),
          child: SingleChildScrollView(
            controller: widget.controller,
            child: Column(
              children: [
                BottomSheetMain(
                  offset: widget.offset,
                  toilet: widget.toilet,
                ),
              ],
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: EdgeInsets.all(Dimens.space20),
            child: ToiletBottomSheetButton(toilet: widget.toilet),
          ),
        )
      ],
    );
  }
}
