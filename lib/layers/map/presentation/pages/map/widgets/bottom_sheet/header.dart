import 'package:flutter/material.dart';
import 'package:pookaboo/shared/widgets/app_text.dart';

class ToiletBottomSheetHeader extends StatelessWidget {
  const ToiletBottomSheetHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppText("파크하비오 상가", style: Theme.of(context).textTheme.bodyLarge!)
      ],
    );
  }
}
