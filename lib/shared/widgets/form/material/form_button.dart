import 'package:flutter/material.dart' hide Step;
import 'package:pookaboo/shared/entities/form/step_result.dart';
import 'package:pookaboo/shared/widgets/common/app_button.dart';

enum ButtonsAlignment { vertical, horizontal }

class FormButton extends StatelessWidget {
  final void Function(StepResult? result)? onNextPress;
  final void Function()? onBackPress;
  final StepResult? result;
  final bool disable;

  const FormButton({
    super.key,
    this.onNextPress,
    this.onBackPress,
    this.result,
    this.disable = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (onNextPress != null) ...{
          Row(
            children: [
              Expanded(
                  child: AppButton(
                disable: disable,
                title: '다음',
                onPressed: () {
                  onNextPress!(result);
                },
              )),
            ],
          ),
        },
        if (onBackPress != null) ...{
          const SizedBox(height: 8.0),
          Row(
            children: [
              Expanded(
                  child: AppButton(
                      title: "뒤로가기",
                      color: Colors.transparent,
                      titleColor: Colors.white,
                      onPressed: () {
                        onBackPress!();
                      })),
            ],
          ),
        }
      ],
    );
  }
}
