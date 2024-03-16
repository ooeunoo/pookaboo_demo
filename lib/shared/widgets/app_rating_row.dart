import 'package:flutter/material.dart';
import 'package:pookaboo/shared/styles/palette.dart';
import 'package:pookaboo/shared/widgets/common/app_spacer_h.dart';
import 'package:pookaboo/shared/widgets/common/app_text.dart';

class AppRatingRow extends StatefulWidget {
  final Map<String, dynamic> ratings;

  const AppRatingRow({super.key, required this.ratings});

  @override
  State<AppRatingRow> createState() => _AppRatingRowState();
}

class _AppRatingRowState extends State<AppRatingRow> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildRatingLabel("청결도", widget.ratings['clean']),
        _buildRatingLabel("편의성", widget.ratings['convenience']),
        _buildRatingLabel("관리도", widget.ratings['management']),
        _buildRatingLabel("안전성", widget.ratings['safety'], divider: false),
      ],
    );
  }

  Widget _buildRatingLabel(String label, int rating, {bool divider = true}) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppText("$label ", style: Theme.of(context).textTheme.labelLarge!),
        AppText("$rating",
            style: Theme.of(context).textTheme.labelLarge!.copyWith(
                  color: Palette.lemon03,
                )),
        if (divider) ...[
          const AppSpacerH(),
          AppText('|', style: Theme.of(context).textTheme.labelLarge!),
          const AppSpacerH(),
        ],
      ],
    );
  }
}
