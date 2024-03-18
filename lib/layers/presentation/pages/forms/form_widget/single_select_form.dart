import 'package:flutter/material.dart' hide Step;
import 'package:pookaboo/layers/domain/entities/form/step/information_step.dart';
import 'package:pookaboo/layers/domain/entities/form/step/select_option.dart';
import 'package:pookaboo/layers/domain/entities/form/step/single_select_step.dart';
import 'package:pookaboo/layers/domain/entities/form/step/step_result.dart';
import 'package:pookaboo/layers/presentation/pages/forms/form_widget/form_container.dart';
import 'package:pookaboo/layers/presentation/pages/forms/form_widget/form_button.dart';
import 'package:pookaboo/layers/presentation/pages/forms/form_widget/select_option_card.dart';
import 'package:pookaboo/shared/styles/dimens.dart';
import 'package:pookaboo/shared/widgets/common/app_spacer_v.dart';

class SingleSelectForm extends StatefulWidget {
  final SingleSelectStep step;
  final void Function(StepResult? result) onNextPress;
  final void Function() onBackPress;

  const SingleSelectForm(
      {super.key,
      required this.step,
      required this.onNextPress,
      required this.onBackPress});

  @override
  _SingleSelectFormState createState() => _SingleSelectFormState();
}

class _SingleSelectFormState extends State<SingleSelectForm> {
  bool isLoading = false;
  SelectOption? _selected;

  SingleSelectStep get step => widget.step;
  @override
  Widget build(BuildContext context) {
    return FormContainer(
      step: step,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          const Spacer(),
          Row(
            children: [
              Expanded(
                child: Text(step.title,
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge!
                        .copyWith(fontSize: Dimens.headerLarge)),
              ),
            ],
          ),
          if (step.description?.isNotEmpty == true)
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: Dimens.space12,
                    ),
                    child: Text(step.description!,
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.labelLarge),
                  ),
                ),
              ],
            ),
          AppSpacerV(value: Dimens.space100),
          _options(context),
          AppSpacerV(value: Dimens.space40),
          FormButton(onBackPress: widget.onBackPress),
          const SizedBox(),
        ],
      ),
    );
  }

  Widget _options(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: step.options.length,
      itemBuilder: (BuildContext context, int index) {
        return SelectOptionCard(
          option: step.options[index],
          loading: isLoading,
          selected: _selected == step.options[index],
          onSelected: (SelectOption option) async {
            if (isLoading) {
              return;
            }
            setState(() {
              isLoading = true;
              _selected = option;
            });

            widget
                .onNextPress(StepResult(stepId: step.id, value: option.value));

            setState(() {
              isLoading = false;
            });
          },
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return SizedBox(
          height: Dimens.space12,
        );
      },
    );
  }
}
