import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:pookaboo/layers/domain/entities/form/step/data_step.dart';
import 'package:pookaboo/layers/domain/entities/form/step/step_result.dart';
import 'package:pookaboo/layers/presentation/pages/forms/form_widget/form_container.dart';
import 'package:pookaboo/layers/presentation/pages/forms/form_widget/form_button.dart';
import 'package:pookaboo/shared/styles/dimens.dart';
import 'package:pookaboo/shared/styles/palette.dart';

const String _dateFormat = 'd MMMM yyyy';
const String _timeFormat = 'HH:mm';
const String _dateTimeFormat = 'd MMMM yyyy HH:mm';

class DataForm extends StatefulWidget {
  final DataStep step;
  final void Function(StepResult? result) onNextPress;
  final void Function() onBackPress;

  const DataForm(
      {super.key,
      required this.onNextPress,
      required this.onBackPress,
      required this.step});

  @override
  State<DataForm> createState() => _DataFormState();
}

class _DataFormState extends State<DataForm> {
  final TextEditingController _controller = TextEditingController();
  DateTime? _selectedDate;
  late FocusNode _focusNode; // Declare FocusNode

  bool isLoading = false;

  DataStep get step => widget.step;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode(); // Initialize FocusNode
    _focusNode.requestFocus(); // Request focus when the page is loaded
  }

  @override
  void dispose() {
    _focusNode.dispose(); // Dispose the FocusNode when no longer needed
    super.dispose();
  }

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
          Padding(
            padding: EdgeInsets.only(top: Dimens.space24),
            child: GestureDetector(
              onTap: !isLoading
                  ? () {
                      _showDatePicker(context);
                    }
                  : null,
              child: AbsorbPointer(
                absorbing: isDatePicker,
                child: TextField(
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(height: Dimens.space20 / Dimens.space16),
                  enabled: !isLoading,
                  focusNode: _focusNode, // Attach FocusNode to TextField
                  decoration: _decoration(context),
                  controller: _controller,
                  keyboardType: textInputType,
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
          const Spacer(),
          FormButton(
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
    );
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

  // Future<void> _onPressedNext(StepResult? result) async {
  //   if (isLoading) {
  //     return;
  //   }
  //   FocusScope.of(context).unfocus();

  //   setState(() {
  //     isLoading = true;
  //   });

  //   await widget.onPressed(
  //     button,
  //     StepResult(
  //       stepId: step.id ?? 'not defined',
  //       value: resultValue,
  //     ),
  //   );

  //   setState(() {
  //     isLoading = false;
  //   });
  // }

  Future<void> _showDatePicker(BuildContext context) async {
    final DateFormat dateFormat = DateFormat(dateFormatPattern);
    DateTime? selected;

    final DateTime initialDate = _selectedDate ?? DateTime.now();
    setState(() {
      _selectedDate = initialDate;
      _controller.text = dateFormat.format(initialDate);
    });

    // if (step.type == DataType.date) {
    //   selected = await showPlatformDatePicker(
    //     context,
    //     initialDate: initialDate,
    //     onDateTimeChanged: (DateTime selectedDate) {
    //       setState(() {
    //         _selectedDate = DateUtils.dateOnly(selectedDate);
    //         _controller.text = dateFormat.format(selectedDate);
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
    //         _controller.text = dateFormat.format(selectedDate);
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
    //         _controller.text = dateFormat.format(selectedDate);
    //       });
    //     },
    //   );
    // }
    // if (selected != null) {
    //   setState(() {
    //     _selectedDate = selected;
    //     _controller.text = dateFormat.format(selected!);
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
        return _controller.text;
      case DataType.numberInt:
        return int.tryParse(_controller.text);
      case DataType.numberDouble:
        return double.tryParse(_controller.text);
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
        return TextInputType.number;
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
}
