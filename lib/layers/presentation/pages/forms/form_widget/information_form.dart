import 'package:flutter/material.dart' hide Step;
import 'package:pookaboo/layers/domain/entities/form/step/information_step.dart';
import 'package:pookaboo/layers/domain/entities/form/step/step.dart';
import 'package:pookaboo/layers/domain/entities/form/step/step_result.dart';
import 'package:pookaboo/layers/presentation/pages/forms/form_widget/material/form_container.dart';
import 'package:pookaboo/layers/presentation/pages/forms/form_widget/material/form_button.dart';
import 'package:pookaboo/layers/presentation/pages/forms/form_widget/material/form_header.dart';
import 'package:pookaboo/shared/styles/dimens.dart';

class InformationForm extends StatelessWidget {
  final InformationStep step;
  final void Function(StepResult? result) onNextPress;

  const InformationForm({
    super.key,
    required this.step,
    required this.onNextPress,
  });

  @override
  Widget build(BuildContext context) {
    return FormContainer(
      step: step,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          const Spacer(),
          FormHeader(title: step.title),
          if (step.description?.isNotEmpty == true)
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 12.0,
                    ),
                    child: Text(step.description!,
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.labelLarge),
                  ),
                ),
              ],
            ),
          const Spacer(),
          FormButton(
            onNextPress: onNextPress,
          ),
        ],
      ),
    );
  }
}
