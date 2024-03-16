import 'package:flutter/material.dart';
import 'package:pookaboo/layers/toilet/data/models/toilet.dart';
import 'package:pookaboo/shared/widgets/app_text.dart';

class ToiletBottomSheetHeader extends StatelessWidget {
  final Toilet toilet;

  const ToiletBottomSheetHeader(
    this.toilet, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppText(toilet.name, style: Theme.of(context).textTheme.bodyLarge!)
      ],
    );
  }
}
