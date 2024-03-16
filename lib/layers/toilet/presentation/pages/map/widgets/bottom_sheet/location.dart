import 'package:flutter/material.dart';
import 'package:pookaboo/layers/toilet/data/models/toilet.dart';
import 'package:pookaboo/shared/widgets/app_spacer_h.dart';
import 'package:pookaboo/shared/widgets/app_text.dart';

class ToiletBottomSheetLocation extends StatefulWidget {
  final Toilet toilet;
  final int? time;

  const ToiletBottomSheetLocation({
    super.key,
    required this.toilet,
    this.time,
  });

  @override
  State<ToiletBottomSheetLocation> createState() =>
      _ToiletBottomSheetLocationState();
}

class _ToiletBottomSheetLocationState extends State<ToiletBottomSheetLocation> {
  late String locationTip;

  @override
  void initState() {
    super.initState();
    locationTip = widget.toilet.location_tip == ''
        ? '위치 정보 없음'
        : widget.toilet.location_tip;
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (widget.time != null) ...{
              AppText("도보 ${widget.time}분",
                  style: Theme.of(context).textTheme.bodySmall!),
              const AppSpacerH(),
              AppText("|", style: Theme.of(context).textTheme.labelLarge!),
              const AppSpacerH(),
            },
            AppText(locationTip, style: Theme.of(context).textTheme.labelLarge!)
          ],
        )
      ],
    );
  }
}
