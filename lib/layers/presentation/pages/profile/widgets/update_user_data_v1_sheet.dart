import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pookaboo/layers/data/models/user/app_user.dart';
import 'package:pookaboo/layers/domain/entities/user/update_user_params.dart';
import 'package:pookaboo/layers/presentation/bloc/user/user_bloc.dart';
import 'package:pookaboo/shared/entities/form/select_option.dart';
import 'package:pookaboo/shared/extension/context.dart';
import 'package:pookaboo/shared/styles/dimens.dart';
import 'package:pookaboo/shared/styles/palette.dart';
import 'package:pookaboo/shared/utils/helper/validate_helper.dart';
import 'package:pookaboo/shared/utils/logging/log.dart';
import 'package:pookaboo/shared/widgets/common/app_button.dart';
import 'package:pookaboo/shared/widgets/common/app_dropdown.dart';
import 'package:pookaboo/shared/widgets/common/app_snak_bar.dart';
import 'package:pookaboo/shared/widgets/common/app_spacer_v.dart';
import 'package:pookaboo/shared/widgets/common/app_text.dart';
import 'package:pookaboo/shared/widgets/common/app_text_input.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pookaboo/shared/widgets/form/material/select_option_card.dart';

enum UpdateStep {
  nickname,
  age,
  gender,
}

class UpdateUserDataV1Sheet extends StatefulWidget {
  const UpdateUserDataV1Sheet({super.key});

  @override
  State<UpdateUserDataV1Sheet> createState() => _UpdateUserDataV1SheetState();
}

class _UpdateUserDataV1SheetState extends State<UpdateUserDataV1Sheet> {
  UpdateStep step = UpdateStep.nickname;

  final _nicknameController = TextEditingController();
  final _ageController = TextEditingController();
  final _genderController = TextEditingController(text: Gender.male.ko);

  final _nicknameFocusNode = FocusNode();
  final _ageFocusNode = FocusNode();

  late bool _isValidNickname = false;
  late bool _isValidAge = false;

  String? _nickname;
  String? _age;
  int? _gender;

  @override
  void initState() {
    _nicknameFocusNode.requestFocus();
    super.initState();
  }

  @override
  void dispose() {
    _nicknameController.dispose();
    _nicknameFocusNode.dispose();
    _ageController.dispose();
    _ageFocusNode.dispose();
    _genderController.dispose();
    super.dispose();
  }

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
        _gender = _genderController.text == Gender.male.ko ? 0 : 1;

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
        version: UserVersion.profileupdated.index,
      );

      context.read<UserBloc>().add(UpdateUserEvent(params: params));
      NotifyAfterEditProfileSnackBar(context);
      NotifyGuideProfileEditSnackBar(context);
      context.pop();
    }
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
            validator: (String? v) => isValidNickname(v),
            onChanged: (String value) {
              setState(() {
                _isValidNickname = isValidNickname(value) == null;
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
          validator: (String? value) => isValidAge(value),
          onChanged: (value) {
            setState(() {
              if (value.startsWith('0') && value.length > 1) {
                _ageController.text = int.parse(value).toString();
              }
              _isValidAge = isValidAge(_ageController.text) == null;
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
    List<SelectOption> options = [
      SelectOption(text: Gender.male.ko, value: Gender.male.ko),
      SelectOption(text: Gender.female.ko, value: Gender.female.ko)
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppText('성별을 선택해주세요.',
            style: Theme.of(context).textTheme.bodyLarge!.copyWith()),
        const AppSpacerV(),
        AppText("성별에 맞는 콘텐츠를 제공해드릴게요.",
            style: Theme.of(context).textTheme.labelLarge!),
        AppSpacerV(value: Dimens.space20),
        ListView.separated(
          shrinkWrap: true,
          padding: EdgeInsets.zero,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: options.length,
          itemBuilder: (BuildContext context, int index) {
            return SelectOptionCard(
              option: options[index],
              selected: _genderController.text == options[index].value,
              onSelected: (SelectOption option) async {
                setState(() {
                  _genderController.text = option.value;
                });
              },
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return SizedBox(
              height: Dimens.space12,
            );
          },
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
}
