import 'package:flutter/material.dart' hide Step;
import 'package:pookaboo/layers/data/models/toilet/toilet.dart';
import 'package:pookaboo/layers/domain/entities/toilet/create_toilet_params.dart';
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
  CreateToiletParam params = CreateToiletParam.getEmpty();

  @override
  void initState() {
    super.initState();
  }

  void _onSave(List<StepResult> results) {
    CreateToiletParam params = CreateToiletParam.getEmpty();
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

  void _condition(Step step) {
    if (step.id == 'equipment') {}
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
    if (result != null) {
      setState(() {
        params = _updateParamsWithKey(params, result);
      });
    }

    if (_controller.page?.toInt() == steps.length - 1) {
      bool shouldFinish = true;

      // _onSave(results);
      // return;
    }

    // 다음 페이지 이동
    _controller.nextPage(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeIn,
    );
  }

  void _onPressBackButton() {
    if (_controller.page?.toInt() == 0) {
      return;
    }

    _controller.previousPage(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeIn,
    );
  }

  CreateToiletParam _updateParamsWithKey(
      CreateToiletParam params, StepResult result) {
    String key = result.stepId;
    dynamic value = result.value;
    log.d(value);
    switch (key) {
      case 'name':
        return params.copyWith(name: value as String);
      case 'type':
        return params.copyWith(type: value as int);
      case 'gender':
        return params.copyWith(gender: value as bool);
      case 'password':
        return params.copyWith(password: value as bool);
      case 'password_tip':
        return params.copyWith(password_tip: value as String);
      case 'address':
        return params.copyWith(address: value as String);
      case 'road_address':
        return params.copyWith(road_address: value as String);
      case 'location_tip':
        return params.copyWith(location_tip: value as String);
      case 'city':
        return params.copyWith(city: value as String);
      case 'coordinates':
        return params.copyWith(
            coordinates: "POINT(${value.longitude} ${value.latitude})");
      case 'convenience':
        if (value.contains('paper')) {
          return params.copyWith(paper: true);
        }
        if (value.contains('towel')) {
          return params.copyWith(towel: true);
        }
        if (value.contains('soap')) {
          return params.copyWith(soap: true);
        }
        if (value.contains('powder_room')) {
          return params.copyWith(powder_room: true);
        }
        if (value.contains('hand_dry')) {
          return params.copyWith(hand_dry: true);
        }
        if (value.contains('vending')) {
          return params.copyWith(vending: true);
        }
        if (value.contains('diaper')) {
          return params.copyWith(diaper: true);
        }
        if (value.contains('bell')) {
          return params.copyWith(bell: true);
        }
      case 'time':
        return params.copyWith(
          mon: value.mon as OperateTime,
          tue: value.tue as OperateTime,
          wed: value.wed as OperateTime,
          thu: value.thu as OperateTime,
          fri: value.fri as OperateTime,
          sat: value.sat as OperateTime,
          sun: value.sun as OperateTime,
        );
      // case 'equipment':
      // List<int> urnial = [
      //   value.urinal,
      //   value.child_urinal,
      //   value.disable_urinal
      // ];
      // List<int> urnial = [
      //   value.urinal,
      //   value.child_urinal,
      //   value.disable_urinal
      // ];
      // List<int> urnial = [
      //   value.urinal,
      //   value.child_urinal,
      //   value.disable_urinal
      // ];

      // return params.copyWith(password: value as bool);
      default:
        return params;
    }
    return params;
  }
}
