import 'package:flutter/material.dart' hide Step;
import 'package:pookaboo/layers/domain/entities/form/step/data_step.dart';
import 'package:pookaboo/layers/domain/entities/form/step/information_step.dart';
import 'package:pookaboo/layers/domain/entities/form/step/map_step.dart';
import 'package:pookaboo/layers/domain/entities/form/step/multi_data_step.dart';
import 'package:pookaboo/layers/domain/entities/form/step/multi_select_step.dart';
import 'package:pookaboo/layers/domain/entities/form/step/select_option.dart';
import 'package:pookaboo/layers/domain/entities/form/step/single_select_step.dart';
import 'package:pookaboo/layers/domain/entities/form/step/step.dart';
import 'package:pookaboo/layers/domain/entities/form/step/step_result.dart';
import 'package:pookaboo/layers/presentation/pages/forms/form_widget/data_form.dart';
import 'package:pookaboo/layers/presentation/pages/forms/form_widget/information_form.dart';
import 'package:pookaboo/layers/presentation/pages/forms/form_widget/map_form.dart';
import 'package:pookaboo/layers/presentation/pages/forms/form_widget/multi_data_form.dart';
import 'package:pookaboo/layers/presentation/pages/forms/form_widget/multi_select_form.dart';
import 'package:pookaboo/layers/presentation/pages/forms/form_widget/single_select_form.dart';
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
        return InformationForm(
          step: step as InformationStep,
          onNextPress: _onPressNextButton,
        );
      case const (SingleSelectStep):
        return SingleSelectForm(
          step: step as SingleSelectStep,
          onNextPress: _onPressNextButton,
          onBackPress: _onPressBackButton,
        );
      case const (DataStep):
        return DataForm(
          step: step as DataStep,
          onNextPress: _onPressNextButton,
          onBackPress: _onPressBackButton,
        );
      case const (MultiSelectStep):
        return MultiSelectForm(
            step: step as MultiSelectStep,
            onNextPress: _onPressNextButton,
            onBackPress: _onPressBackButton);
      case const (MultiDataStep):
        return MultiDataForm(
            step: step as MultiDataStep,
            onNextPress: _onPressNextButton,
            onBackPress: _onPressBackButton);
      case const (MapStep):
        return MapForm(
            step: step as MapStep,
            onNextPress: _onPressNextButton,
            onBackPress: _onPressBackButton);
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

    // 마지막에 다음 버튼 클릭인 경우
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

  // Future<void> _handleOnPressed(StepButton button, [StepResult? result]) async {
  //   StepAction action = button.action;

  //   if (result != null && action != StepAction.skip) {
  //     results.add(result);
  //   }
  //   if (action == StepAction.back && _controller.page!.toInt() > 0) {}
  //   if (action == StepAction.submit ||
  //       _controller.page?.toInt() == steps.length - 1) {
  //     bool shouldFinish = true;
  //     // last page, so we need to submit
  //     // if (widget.onSubmit != null) {
  //     //   final List<Step> newSteps = await widget.onSubmit!(results);
  //     //   shouldFinish = newSteps.isEmpty;
  //     //   setState(() {
  //     //     steps.addAll(newSteps);
  //     //   });
  //     // }
  //     // if (shouldFinish) {
  //     //   widget.onFinish();
  //     //   return;
  //     // }
  //   }

  //   switch (action) {
  //     case StepAction.back:
  //       _controller.previousPage(
  //         duration: const Duration(milliseconds: 300),
  //         curve: Curves.easeIn,
  //       );
  //     case StepAction.submit:
  //     case StepAction.next:
  //     case StepAction.skip:
  //       _controller.nextPage(
  //         duration: const Duration(milliseconds: 300),
  //         curve: Curves.easeIn,
  //       );
  //       return;
  //   }
  // }
}
