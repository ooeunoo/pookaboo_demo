import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:pookaboo/layers/domain/entities/form/step/data_step.dart';
import 'package:pookaboo/layers/domain/entities/form/step/step_result.dart';
import 'package:pookaboo/layers/presentation/pages/forms/form_widget/material/form_container.dart';
import 'package:pookaboo/layers/presentation/pages/forms/form_widget/material/form_button.dart';
import 'package:pookaboo/layers/presentation/pages/forms/form_widget/material/form_description.dart';
import 'package:pookaboo/layers/presentation/pages/forms/form_widget/material/form_header.dart';
import 'package:pookaboo/shared/constant/enum.dart';
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
  late FocusNode _focusNode;

  bool isLoading = false;

  DataStep get step => widget.step;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
    _focusNode.requestFocus();
  }

  @override
  void dispose() {
    _focusNode.dispose();
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
          FormHeader(title: step.title),
          if (step.description?.isNotEmpty == true)
            FormDescription(description: step.description!),
          Padding(
            padding: EdgeInsets.only(top: Dimens.space24),
            child: GestureDetector(
              child: AbsorbPointer(
                child: TextField(
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(height: Dimens.space20 / Dimens.space16),
                  enabled: !isLoading,
                  focusNode: _focusNode,
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
            disable: _controller.text.isEmpty,
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

  // Future<void> _showDatePicker(BuildContext context) async {
  //   final DateFormat dateFormat = DateFormat(dateFormatPattern);
  //   DateTime? selected;

  //   final DateTime initialDate = _selectedDate ?? DateTime.now();
  //   setState(() {
  //     _selectedDate = initialDate;
  //     _controller.text = dateFormat.format(initialDate);
  //   });

  //   // if (step.type == InputDataType.date) {
  //   //   selected = await showPlatformDatePicker(
  //   //     context,
  //   //     initialDate: initialDate,
  //   //     onDateTimeChanged: (DateTime selectedDate) {
  //   //       setState(() {
  //   //         _selectedDate = DateUtils.dateOnly(selectedDate);
  //   //         _controller.text = dateFormat.format(selectedDate);
  //   //       });
  //   //     },
  //   //   );
  //   //   selected = DateUtils.dateOnly(selected);
  //   // } else if (step.type == InputDataType.time) {
  //   //   final TimeOfDay? timeOfDay = await showPlatformTimePicker(
  //   //     context,
  //   //     initialDate: initialDate,
  //   //     onDateTimeChanged: (DateTime selectedDate) {
  //   //       setState(() {
  //   //         _selectedDate = selectedDate;
  //   //         _controller.text = dateFormat.format(selectedDate);
  //   //       });
  //   //     },
  //   //   );
  //   //   if (timeOfDay != null) {
  //   //     selected = DateTime(0, 0, 0, timeOfDay.hour, timeOfDay.minute);
  //   //   }
  //   // } else if (step.type == InputDataType.dateAndTime) {
  //   //   selected = await showPlatformDateAndTimePicker(
  //   //     context,
  //   //     initialDate: initialDate,
  //   //     onDateTimeChanged: (DateTime selectedDate) {
  //   //       setState(() {
  //   //         _selectedDate = selectedDate;
  //   //         _controller.text = dateFormat.format(selectedDate);
  //   //       });
  //   //     },
  //   //   );
  //   // }
  //   // if (selected != null) {
  //   //   setState(() {
  //   //     _selectedDate = selected;
  //   //     _controller.text = dateFormat.format(selected!);
  //   //   });
  //   // }
  // }

  // String get dateFormatPattern {
  //   if (step.dateFormat?.isNotEmpty == true) {
  //     return step.dateFormat!;
  //   }
  //   switch (step.type) {
  //     case InputDataType.date:
  //       return _dateFormat;
  //     case InputDataType.time:
  //       return _timeFormat;
  //     case InputDataType.dateAndTime:
  //       return _dateTimeFormat;
  //     default:
  //       throw UnsupportedError('Wrong step type for date picker');
  //   }
  // }

  // bool get isDatePicker =>
  //     step.type == InputDataType.date ||
  //     step.type == InputDataType.time ||
  //     step.type == InputDataType.dateAndTime;

  dynamic get resultValue {
    switch (step.type) {
      case InputDataType.text:
      case InputDataType.textMultiline:
      case InputDataType.name:
      case InputDataType.email:
        return _controller.text;
      case InputDataType.numberInt:
        return int.tryParse(_controller.text);
      case InputDataType.numberDouble:
        return double.tryParse(_controller.text);
    }
  }

  TextInputType get textInputType {
    switch (step.type) {
      case InputDataType.text:
        return TextInputType.text;
      case InputDataType.textMultiline:
        return TextInputType.multiline;
      case InputDataType.numberInt:
        return TextInputType.number;
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
}
