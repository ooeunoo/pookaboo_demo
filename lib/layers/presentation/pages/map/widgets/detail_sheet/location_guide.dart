import 'package:flutter/material.dart';
import 'package:pookaboo/layers/data/models/toilet/toilet.dart';
import 'package:pookaboo/shared/widgets/common/app_spacer_h.dart';
import 'package:pookaboo/shared/widgets/common/app_text.dart';

class LocationGuide extends StatefulWidget {
  final Toilet toilet;
  final int? time;

  const LocationGuide({
    super.key,
    required this.toilet,
    this.time,
  });

  @override
  State<LocationGuide> createState() => _LocationGuideState();
}

class _LocationGuideState extends State<LocationGuide> {
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
              const AppSpacerH()
            },
            AppText(locationTip, style: Theme.of(context).textTheme.labelLarge!)
          ],
        )
      ],
    );
  }
}
