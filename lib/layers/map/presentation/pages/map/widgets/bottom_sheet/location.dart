import 'package:flutter/material.dart';
import 'package:pookaboo/shared/widgets/app_spacer_h.dart';
import 'package:pookaboo/shared/widgets/app_text.dart';

class ToiletBottomSheetLocation extends StatelessWidget {
  const ToiletBottomSheetLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppText("도보 1분", style: Theme.of(context).textTheme.bodySmall!),
            const AppSpacerH(),
            AppText("|", style: Theme.of(context).textTheme.labelLarge!),
            const AppSpacerH(),
            AppText("GS 편의점 우측 복도에서 직진",
                style: Theme.of(context).textTheme.labelLarge!)
          ],
        )
      ],
    );
  }
}
