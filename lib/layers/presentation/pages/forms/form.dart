import 'package:flutter/material.dart' hide Step;
import 'package:pookaboo/shared/entities/form/confirm_step.dart';
import 'package:pookaboo/shared/entities/form/data_step.dart';
import 'package:pookaboo/shared/entities/form/information_step.dart';
import 'package:pookaboo/shared/entities/form/map_step.dart';
import 'package:pookaboo/shared/entities/form/multi_data_step.dart';
import 'package:pookaboo/shared/entities/form/multi_select_step.dart';
import 'package:pookaboo/shared/entities/form/multi_time_data_step.dart';
import 'package:pookaboo/shared/entities/form/picutre_step.dart';
import 'package:pookaboo/shared/entities/form/select_option.dart';
import 'package:pookaboo/shared/entities/form/single_select_step.dart';
import 'package:pookaboo/shared/entities/form/step.dart';
import 'package:pookaboo/shared/entities/form/step_result.dart';
import 'package:pookaboo/shared/widgets/form/app_confirm_form.dart';
import 'package:pookaboo/shared/widgets/form/app_data_form.dart';
import 'package:pookaboo/shared/widgets/form/app_information_form.dart';
import 'package:pookaboo/shared/widgets/form/app_map_form.dart';
import 'package:pookaboo/shared/widgets/form/app_multi_data_form.dart';
import 'package:pookaboo/shared/widgets/form/app_multi_select_form.dart';
import 'package:pookaboo/shared/widgets/form/app_multi_time_data_form.dart';
import 'package:pookaboo/shared/widgets/form/app_picture_form.dart';
import 'package:pookaboo/shared/widgets/form/app_single_select_form.dart';
import 'package:pookaboo/layers/presentation/pages/forms/survey.dart';
import 'package:pookaboo/shared/utils/logging/log.dart';

class SurveyFlow extends StatefulWidget {
  const SurveyFlow({
    super.key,
  });

  @override
  State<SurveyFlow> createState() => _SurveyFlowState();
}

class _SurveyFlowState extends State<SurveyFlow> {
  final PageController _controller = PageController();

  List<StepResult> results = [];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        return Scaffold(
          body: Stack(
            children: [
              PageView.builder(
                controller: _controller,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: steps.length,
                itemBuilder: (BuildContext context, int index) {
                  return _mapStep(context, steps[index]);
                },
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _mapStep(BuildContext context, Step step) {
    switch (step.runtimeType) {
      case const (InformationStep):
        return AppInformationForm(
          step: step as InformationStep,
          onNextPress: _onPressNextButton,
        );
      case const (SingleSelectStep):
        return AppSingleSelectForm(
          step: step as SingleSelectStep,
          onNextPress: _onPressNextButton,
          onBackPress: _onPressBackButton,
        );
      case const (DataStep):
        return AppDataForm(
          step: step as DataStep,
          onNextPress: _onPressNextButton,
          onBackPress: _onPressBackButton,
        );
      case const (MultiSelectStep):
        return AppMultiSelectForm(
            step: step as MultiSelectStep,
            onNextPress: _onPressNextButton,
            onBackPress: _onPressBackButton);
      case const (MultiDataStep):
        return AppMultiDataForm(
            step: step as MultiDataStep,
            onNextPress: _onPressNextButton,
            onBackPress: _onPressBackButton);
      case const (MultiTimeDataStep):
        return AppMultiTimeDataForm(
            step: step as MultiTimeDataStep,
            onNextPress: _onPressNextButton,
            onBackPress: _onPressBackButton);
      case const (MapStep):
        return AppMapForm(
            step: step as MapStep,
            onNextPress: _onPressNextButton,
            onBackPress: _onPressBackButton);
      case const (PictureStep):
        return AppPictureForm(
            step: step as PictureStep,
            onNextPress: _onPressNextButton,
            onBackPress: _onPressBackButton);
      case const (ConfirmStep):
        return AppConfirmForm(
          step: step as ConfirmStep,
          onNextPress: _onPressNextButton,
        );
      default:
        return Container();
    }
  }

  void _onPressNextButton(StepResult? result) {
    log.d(result?.toJson());
    if (result != null) {
      setState(() {
        results.add(result);
      });
    }

    if (_controller.page?.toInt() == steps.length - 1) {
      bool shouldFinish = true;
      log.d('최종: $results');
      return;
    }

    // 다음 페이지 이동
    _controller.nextPage(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeIn,
    );
  }

  void _onPressBackButton() {
    if (results.isNotEmpty) {
      results.removeLast();
    }

    if (_controller.page?.toInt() == 0) {
      return;
    }

    _controller.previousPage(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeIn,
    );
  }
}
