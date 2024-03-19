import 'package:flutter/material.dart';
import 'package:pookaboo/layers/data/models/toilet/toilet.dart';
import 'package:pookaboo/shared/extension/context.dart';
import 'package:pookaboo/shared/styles/dimens.dart';
import 'package:pookaboo/shared/styles/palette.dart';
import 'package:pookaboo/shared/widgets/common/app_button.dart';
import 'package:pookaboo/shared/widgets/common/app_spacer_h.dart';
import 'package:pookaboo/shared/widgets/common/app_spacer_v.dart';
import 'package:pookaboo/shared/widgets/common/app_text.dart';
import 'package:pookaboo/shared/widgets/common/app_text_input.dart';

class InquireDialog extends StatefulWidget {
  final Toilet toilet;
  final void Function(String inquiry) confirmPress;

  const InquireDialog({
    super.key,
    required this.toilet,
    required this.confirmPress,
  });

  @override
  State<InquireDialog> createState() => _InquireDialogState();
}

class _InquireDialogState extends State<InquireDialog> {
  final _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.widthInPercent(95),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const AppSpacerV(),
          AppText(
            '문의하기',
            style: Theme.of(context).textTheme.bodyMedium!,
          ),
          AppSpacerV(value: Dimens.space12),
          AppTextInput(
            controller: _controller,
            minLine: 3,
          ),
          AppSpacerV(value: Dimens.space12),
          Row(
            children: [
              Expanded(
                child: AppButton(
                    title: '취소',
                    titleColor: Palette.coolGrey03,
                    color: Colors.transparent,
                    onPressed: () {
                      context.back();
                    }),
              ),
              const AppSpacerH(),
              Expanded(
                child: AppButton(
                    title: '등록',
                    titleColor: Palette.coolGrey12,
                    color: Palette.lemon01,
                    onPressed: () {
                      widget.confirmPress(_controller.text);
                      context.back();
                    }),
              )
            ],
          )
        ],
      ),
    );
  }
}
