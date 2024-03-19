import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:pookaboo/layers/domain/entities/form/step/data_step.dart';
import 'package:pookaboo/layers/domain/entities/form/step/multi_data_step.dart';
import 'package:pookaboo/layers/domain/entities/form/step/step_result.dart';
import 'package:pookaboo/layers/presentation/pages/forms/form_widget/form_container.dart';
import 'package:pookaboo/layers/presentation/pages/forms/form_widget/form_button.dart';
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
                          absorbing: isDatePicker,
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

  Future<void> _showDatePicker(BuildContext context, int index) async {
    final DateFormat dateFormat = DateFormat(dateFormatPattern);
    DateTime? selected;

    final DateTime initialDate = _selectedDate ?? DateTime.now();
    setState(() {
      _selectedDate = initialDate;
      _controllers[index].text = dateFormat.format(initialDate);
    });

    // if (step.type == DataType.date) {
    //   selected = await showPlatformDatePicker(
    //     context,
    //     initialDate: initialDate,
    //     onDateTimeChanged: (DateTime selectedDate) {
    //       setState(() {
    //         _selectedDate = DateUtils.dateOnly(selectedDate);
    //         _controllers[index].text = dateFormat.format(selectedDate);
    //       });
    //     },
    //   );
    //   selected = DateUtils.dateOnly(selected);
    // } else if (step.type == DataType.time) {
    //   final TimeOfDay? timeOfDay = await showPlatformTimePicker(
    //     context,
    //     initialDate: initialDate,
    //     onDateTimeChanged: (DateTime selectedDate) {
    //       setState(() {
    //         _selectedDate = selectedDate;
    //         _controllers[index].text = dateFormat.format(selectedDate);
    //       });
    //     },
    //   );
    //   if (timeOfDay != null) {
    //     selected = DateTime(0, 0, 0, timeOfDay.hour, timeOfDay.minute);
    //   }
    // } else if (step.type == DataType.dateAndTime) {
    //   selected = await showPlatformDateAndTimePicker(
    //     context,
    //     initialDate: initialDate,
    //     onDateTimeChanged: (DateTime selectedDate) {
    //       setState(() {
    //         _selectedDate = selectedDate;
    //         _controllers[index].text = dateFormat.format(selectedDate);
    //       });
    //     },
    //   );
    // }
    // if (selected != null) {
    //   setState(() {
    //     _selectedDate = selected;
    //     _controllers[index].text = dateFormat.format(selected!);
    //   });
    // }
  }

  String get dateFormatPattern {
    if (step.dateFormat?.isNotEmpty == true) {
      return step.dateFormat!;
    }
    switch (step.type) {
      case DataType.date:
        return _dateFormat;
      case DataType.time:
        return _timeFormat;
      case DataType.dateAndTime:
        return _dateTimeFormat;
      default:
        throw UnsupportedError('Wrong step type for date picker');
    }
  }

  bool get isDatePicker =>
      step.type == DataType.date ||
      step.type == DataType.time ||
      step.type == DataType.dateAndTime;

  dynamic get resultValue {
    switch (step.type) {
      case DataType.text:
      case DataType.textMultiline:
      case DataType.name:
      case DataType.email:
        return _controllers.map((controller) => controller.text).toList();
      case DataType.numberInt:
        Map<String, int?> values = {};
        for (int index = 0; index < _controllers.length; index++) {
          final option = step.options[index];
          final value = int.tryParse(_controllers[index].text);
          values[option.id] = value;
        }
        return values;
      case DataType.numberDouble:
        Map<String, double?> values = {};
        for (int index = 0; index < _controllers.length; index++) {
          final option = step.options[index];
          final value = double.tryParse(_controllers[index].text);
          values[option.id] = value;
        }
        return values;
      case DataType.date:
      case DataType.time:
      case DataType.dateAndTime:
        return _selectedDate?.toIso8601String();
    }
  }

  TextInputType get textInputType {
    switch (step.type) {
      case DataType.text:
        return TextInputType.text;
      case DataType.textMultiline:
        return TextInputType.multiline;
      case DataType.numberInt:
        return const TextInputType.numberWithOptions(signed: true);
      // return TextInputType.number;
      case DataType.numberDouble:
        return const TextInputType.numberWithOptions(
          decimal: true,
        );
      case DataType.email:
        return TextInputType.emailAddress;
      case DataType.name:
        return TextInputType.name;
      case DataType.date:
      case DataType.time:
      case DataType.dateAndTime:
        return TextInputType.datetime;
    }
  }

  List<TextInputFormatter>? get textInputFormatter {
    switch (step.type) {
      case DataType.numberInt:
        return [FilteringTextInputFormatter.digitsOnly];
      case DataType.text:
      case DataType.textMultiline:
      case DataType.numberDouble:
      case DataType.email:
      case DataType.name:
      case DataType.date:
      case DataType.time:
      case DataType.dateAndTime:
        return null;
    }
  }
}
