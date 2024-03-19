import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:pookaboo/layers/domain/entities/form/step/data_step.dart';
import 'package:pookaboo/layers/domain/entities/form/step/multi_data_step.dart';
import 'package:pookaboo/layers/domain/entities/form/step/step_result.dart';
import 'package:pookaboo/layers/presentation/pages/forms/form_widget/form_container.dart';
import 'package:pookaboo/layers/presentation/pages/forms/form_widget/form_button.dart';
import 'package:pookaboo/shared/constant/enum.dart';
import 'package:pookaboo/shared/styles/dimens.dart';
import 'package:pookaboo/shared/styles/palette.dart';
import 'package:pookaboo/shared/widgets/common/app_spacer_h.dart';
import 'package:pookaboo/shared/widgets/common/app_spacer_v.dart';
import 'package:pookaboo/shared/widgets/common/app_text.dart';

const String _dateFormat = 'd MMMM yyyy';
const String _timeFormat = 'HH:mm';
const String _dateTimeFormat = 'd MMMM yyyy HH:mm';

class MultiDataForm extends StatefulWidget {
  final MultiDataStep step;
  final void Function(StepResult? result) onNextPress;
  final void Function() onBackPress;

  const MultiDataForm(
      {super.key,
      required this.onNextPress,
      required this.onBackPress,
      required this.step});

  @override
  State<MultiDataForm> createState() => _MultiDataFormState();
}

class _MultiDataFormState extends State<MultiDataForm> {
  late List<TextEditingController> _controllers;
  DateTime? _selectedDate;
  late List<FocusNode> _focusNodes;

  bool isLoading = false;

  MultiDataStep get step => widget.step;

  @override
  void initState() {
    super.initState();
    _controllers =
        List.generate(step.options.length, (_) => TextEditingController());
    _focusNodes = List.generate(step.options.length, (index) => FocusNode());
  }

  @override
  void dispose() {
    for (var controller in _controllers) {
      controller.dispose();
    }
    for (var focusNode in _focusNodes) {
      focusNode.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FormContainer(
      step: step,
      child: ListView(
        shrinkWrap: true,
        physics: const ClampingScrollPhysics(),
        children: [
          Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                children: [
                  Expanded(
                    child: AppText(
                      step.title,
                      align: TextAlign.center,
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(fontSize: Dimens.headerLarge),
                    ),
                  ),
                ],
              ),
              ...List.generate(step.options.length, (index) {
                final option = step.options[index];
                return Padding(
                  padding: EdgeInsets.only(top: Dimens.space24),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppText(
                        option.label,
                        style: Theme.of(context).textTheme.bodyMedium!,
                      ),
                      const AppSpacerH(),
                      GestureDetector(
                        onTap: !isLoading ? () => _requestFocus(index) : null,
                        child: AbsorbPointer(
                          child: SizedBox(
                            width: Dimens.space100,
                            child: TextField(
                              focusNode: _focusNodes[index],
                              controller: _controllers[index],
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                      height: Dimens.space20 / Dimens.space16),
                              enabled: !isLoading,
                              decoration: _decoration(context),
                              textInputAction: TextInputAction.next,
                              keyboardType: textInputType,
                              inputFormatters: textInputFormatter,
                              textAlign: TextAlign.center,
                              onTapOutside: (_) {
                                FocusScope.of(context).unfocus();
                              },
                              onChanged: (_) {
                                setState(() {});
                              },
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              }),
              AppSpacerV(value: Dimens.space20),
              FormButton(
                disable:
                    _controllers.any((controller) => controller.text.isEmpty),
                onNextPress: widget.onNextPress,
                onBackPress: widget.onBackPress,
                result: StepResult(
                  stepId: step.id,
                  value: resultValue,
                ),
              ),
              SizedBox(height: MediaQuery.of(context).viewInsets.bottom),
            ],
          ),
        ],
      ),
    );
  }

  void _requestFocus(int index) {
    if (_focusNodes[index].hasFocus) {
      _focusNodes[index].unfocus();
    } else {
      _focusNodes[index].requestFocus();
    }
  }

  InputDecoration _decoration(BuildContext context) {
    return InputDecoration(
      contentPadding: EdgeInsets.symmetric(
        vertical: Dimens.space16,
        horizontal: Dimens.space8,
      ),
      focusedBorder: OutlineInputBorder(
        gapPadding: 0,
        borderRadius: BorderRadius.circular(Dimens.space4),
        borderSide: const BorderSide(color: Palette.coolGrey05),
      ),
      border: OutlineInputBorder(
          borderSide: const BorderSide(color: Palette.coolGrey05),
          borderRadius: BorderRadius.all(Radius.circular(Dimens.space4))),
    );
  }

  dynamic get resultValue {
    switch (step.type) {
      case InputDataType.text:
      case InputDataType.textMultiline:
      case InputDataType.name:
      case InputDataType.email:
        return _controllers.map((controller) => controller.text).toList();
      case InputDataType.numberInt:
        Map<String, int?> values = {};
        for (int index = 0; index < _controllers.length; index++) {
          final option = step.options[index];
          final value = int.tryParse(_controllers[index].text);
          values[option.id] = value;
        }
        return values;
      case InputDataType.numberDouble:
        Map<String, double?> values = {};
        for (int index = 0; index < _controllers.length; index++) {
          final option = step.options[index];
          final value = double.tryParse(_controllers[index].text);
          values[option.id] = value;
        }
        return values;
    }
  }

  TextInputType get textInputType {
    switch (step.type) {
      case InputDataType.text:
        return TextInputType.text;
      case InputDataType.textMultiline:
        return TextInputType.multiline;
      case InputDataType.numberInt:
        return const TextInputType.numberWithOptions(signed: true);
      case InputDataType.numberDouble:
        return const TextInputType.numberWithOptions(
          decimal: true,
        );
      case InputDataType.email:
        return TextInputType.emailAddress;
      case InputDataType.name:
        return TextInputType.name;
    }
  }

  List<TextInputFormatter>? get textInputFormatter {
    switch (step.type) {
      case InputDataType.numberInt:
        return [FilteringTextInputFormatter.digitsOnly];
      case InputDataType.text:
      case InputDataType.textMultiline:
      case InputDataType.numberDouble:
      case InputDataType.email:
      case InputDataType.name:
        return null;
    }
  }
}
