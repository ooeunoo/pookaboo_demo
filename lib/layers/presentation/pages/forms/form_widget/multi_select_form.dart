import 'package:flutter/material.dart' hide Step;
import 'package:pookaboo/layers/domain/entities/form/step/multi_select_step.dart';
import 'package:pookaboo/layers/domain/entities/form/step/select_option.dart';
import 'package:pookaboo/layers/domain/entities/form/step/step_result.dart';
import 'package:pookaboo/layers/presentation/pages/forms/form_widget/form_container.dart';
import 'package:pookaboo/layers/presentation/pages/forms/form_widget/form_button.dart';
import 'package:pookaboo/layers/presentation/pages/forms/form_widget/select_option_card.dart';
import 'package:pookaboo/shared/styles/dimens.dart';
import 'package:pookaboo/shared/widgets/common/app_spacer_v.dart';

class MultiSelectForm extends StatefulWidget {
  final MultiSelectStep step;
  final void Function(StepResult? result) onNextPress;
  final void Function() onBackPress;

  const MultiSelectForm(
      {super.key,
      required this.step,
      required this.onNextPress,
      required this.onBackPress});

  @override
  _MultiSelectFormState createState() => _MultiSelectFormState();
}

class _MultiSelectFormState extends State<MultiSelectForm> {
  bool isLoading = false;
  final List<dynamic> _selected = [];

  MultiSelectStep get step => widget.step;

  bool get minimumItemsSelected =>
      step.minOptionsSelected == null ||
      _selected.length >= step.minOptionsSelected!;

  bool get maximumItemsSelected =>
      step.maxOptionsSelected != null &&
      _selected.length == step.maxOptionsSelected!;

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
          AppSpacerV(value: Dimens.space30),
          _options(context),
          AppSpacerV(value: Dimens.space50),
          FormButton(
              onNextPress: widget.onNextPress,
              onBackPress: widget.onBackPress,
              result: StepResult(stepId: step.id, value: _selected)),
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
        return SelectOptionCard.multi(
          option: step.options[index],
          loading: isLoading,
          enabled: !maximumItemsSelected,
          selected: _selected.contains(step.options[index].value),
          onSelected: (SelectOption option) async {
            setState(() {
              if (_selected.contains(option.value)) {
                _selected.remove(option.value);
              } else {
                _selected.add(option.value);
              }
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

  // Widget _button(BuildContext context) {
  //   final bool fullWidth =
  //       SurveyFlowTheme.of(context).theme.buttonStyles.buttonWidth ==
  //           SFButtonWidth.full;
  //   if (fullWidth) {
  //     return Row(
  //       children: [
  //         Expanded(
  //           child: StepButtonWidget(
  //             stepButton: step.primaryButton,
  //             enabled: minimumItemsSelected,
  //             onPressed: _onPressed,
  //           ),
  //         ),
  //       ],
  //     );
  //   } else {
  //     return StepButtonWidget(
  //       stepButton: step.primaryButton,
  //       enabled: minimumItemsSelected,
  //       onPressed: _onPressed,
  //     );
  //   }
  // }
}
