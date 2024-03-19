import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pookaboo/layers/data/models/user/app_user.dart';
import 'package:pookaboo/layers/domain/entities/user/update_user_params.dart';
import 'package:pookaboo/layers/presentation/bloc/user/user_bloc.dart';
import 'package:pookaboo/shared/styles/dimens.dart';
import 'package:pookaboo/shared/utils/logging/log.dart';
import 'package:pookaboo/shared/widgets/common/app_button.dart';
import 'package:pookaboo/shared/widgets/common/app_dropdown.dart';
import 'package:pookaboo/shared/widgets/common/app_spacer_v.dart';
import 'package:pookaboo/shared/widgets/common/app_text.dart';
import 'package:pookaboo/shared/widgets/common/app_text_input.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

enum UpdateStep {
  nickname,
  age,
  gender,
}

class UpdateUserDataBottomSheet extends StatefulWidget {
  const UpdateUserDataBottomSheet({super.key});

  @override
  State<UpdateUserDataBottomSheet> createState() =>
      _UpdateUserDataBottomSheetState();
}

class _UpdateUserDataBottomSheetState extends State<UpdateUserDataBottomSheet> {
  UpdateStep step = UpdateStep.nickname;

  final _nicknameController = TextEditingController();
  final _ageController = TextEditingController();

  final _nicknameFocusNode = FocusNode();
  final _ageFocusNode = FocusNode();

  late bool _isValidNickname = false;
  late bool _isValidAge = false;

  String? _nickname;
  String? _age;
  Gender _gender = Gender.male;
  final List<Gender> _listGender = [Gender.male, Gender.female];

  void _nextStep() {
    setState(() {
      if (step == UpdateStep.nickname) {
        _nickname = _nicknameController.text;
        step = UpdateStep.age;
        _ageFocusNode.requestFocus();
      } else if (step == UpdateStep.age) {
        _age = _ageController.text;
        step = UpdateStep.gender;
      } else if (step == UpdateStep.gender) {
        _gender = _listGender.firstWhere(
          (gender) => gender.ko == _gender.ko,
          orElse: () => Gender.male,
        );

        _updateUserMetadata();
      }
    });
  }

  Future<void> _updateUserMetadata() async {
    UserState state = context.read<UserBloc>().state;
    if (state is AuthenticatedState) {
      UpdateUserParams params = UpdateUserParams(
        user_id: state.user.id,
        nickname: _nickname!,
        age: _age!.toString(),
        gender: _gender,
      );

      context.read<UserBloc>().add(UpdateUserEvent(params: params));
      context.pop();
    }
  }

  @override
  void dispose() {
    _nicknameController.dispose();
    _ageController.dispose();
    _nicknameFocusNode.dispose();
    _ageFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(
            vertical: Dimens.space36, horizontal: Dimens.space20),
        child: Column(
          children: [
            if (step == UpdateStep.nickname) ...{_stepNickname()},
            if (step == UpdateStep.age) ...{_stepAge()},
            if (step == UpdateStep.gender) ...{_stepGender()},
          ],
        ));
  }

  Widget _stepNickname() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppText('프로필 명을 수정해주세요.',
            style: Theme.of(context).textTheme.bodyLarge!.copyWith()),
        const AppSpacerV(),
        AppText("솔직한 의견을 남기기에 실명이 부담스럽다면 재밌는 프로필명으로 바꿔 보세요.",
            style: Theme.of(context).textTheme.labelLarge!),
        AppTextInput(
            key: const Key('nickname'),
            hintText: '프로필 명',
            controller: _nicknameController,
            curFocusNode: _nicknameFocusNode,
            nextFocusNode: _ageFocusNode,
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.text,
            onChanged: (_) {
              setState(() {
                _isValidNickname = _nicknameController.text.isNotEmpty &&
                    _nicknameController.text.length > 2;
              });
            }),
        const AppSpacerV(),
        AppButton(
            title: '다음',
            disable: !_isValidNickname,
            onPressed: () {
              _nextStep();
            }),
        const AppSpacerV(),
      ],
    );
  }

  Widget _stepAge() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppText('나이를 입력해주세요',
            style: Theme.of(context).textTheme.bodyLarge!.copyWith()),
        const AppSpacerV(),
        AppText("연령대에 맞는 콘텐츠를 제공해드릴게요.",
            style: Theme.of(context).textTheme.labelLarge!),
        AppTextInput(
          key: const Key('age'),
          hintText: '나이',
          controller: _ageController,
          curFocusNode: _ageFocusNode,
          textInputAction: TextInputAction.next,
          keyboardType: TextInputType.number,
          suffixText: '세',
          // validator: (String? value) => _checkValideAge(),
          onChanged: (_) {
            setState(() {
              _isValidAge = _ageController.text.isNotEmpty;
            });
          },
        ),
        const AppSpacerV(),
        AppButton(
            title: '다음',
            disable: !_isValidAge,
            onPressed: () {
              _nextStep();
            }),
      ],
    );
  }

  Widget _stepGender() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppText('성별을 선택해주세요.',
            style: Theme.of(context).textTheme.bodyLarge!.copyWith()),
        const AppSpacerV(),
        AppText("성별에 맞는 콘텐츠를 제공해드릴게요.",
            style: Theme.of(context).textTheme.labelLarge!),
        AppDropDown<Gender>(
          key: const Key("gender"),
          value: _gender,
          items: Gender.values
              .map(
                (data) => DropdownMenuItem(
                  value: data,
                  child: Text(
                    _getGenderName(data, context),
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
              )
              .toList(),
          onChanged: (value) {},
        ),
        const AppSpacerV(),
        AppButton(
            title: '완료',
            disable: false,
            onPressed: () {
              _nextStep();
            }),
      ],
    );
  }

  String _getGenderName(Gender gender, BuildContext context) {
    if (gender == Gender.male) {
      return Gender.male.ko;
    } else {
      return Gender.female.ko;
    }
  }
}
