import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:pookaboo/layers/data/models/review/review.dart';
import 'package:pookaboo/layers/data/models/user/app_user.dart';
import 'package:pookaboo/layers/domain/entities/user/update_user_params.dart';
import 'package:pookaboo/layers/presentation/bloc/review/review_bloc.dart';
import 'package:pookaboo/layers/presentation/bloc/user/user_bloc.dart';
import 'package:pookaboo/mocks/image.dart';
import 'package:pookaboo/shared/extension/context.dart';
import 'package:pookaboo/shared/styles/dimens.dart';
import 'package:pookaboo/shared/styles/palette.dart';
import 'package:pookaboo/shared/utils/helper/time_helper.dart';
import 'package:pookaboo/shared/utils/logging/log.dart';
import 'package:pookaboo/shared/widgets/app_review_card.dart';
import 'package:pookaboo/shared/widgets/common/app_button.dart';
import 'package:pookaboo/shared/widgets/common/app_divider.dart';
import 'package:pookaboo/shared/widgets/common/app_dropdown.dart';
import 'package:pookaboo/shared/widgets/common/app_snak_bar.dart';
import 'package:pookaboo/shared/widgets/common/app_spacer_h.dart';
import 'package:pookaboo/shared/widgets/common/app_spacer_v.dart';
import 'package:pookaboo/shared/widgets/common/app_text.dart';
import 'package:pookaboo/shared/widgets/app_review_header.dart';
import 'package:pookaboo/shared/widgets/common/app_text_input.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({super.key});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  AppUser? user;

  final _nicknameController = TextEditingController();
  final _ageController = TextEditingController();
  final _genderController = TextEditingController();

  final _nicknameFocusNode = FocusNode();
  final _ageFocusNode = FocusNode();
  final _genderFocusNode = FocusNode();

  final List<Gender> _listGender = [Gender.male, Gender.female];

  @override
  void initState() {
    super.initState();
    _setupFocusListeners();

    _refresh();
  }

  @override
  void dispose() {
    _nicknameController.dispose();
    _nicknameFocusNode.dispose();
    _ageController.dispose();
    _ageFocusNode.dispose();
    _genderController.dispose();
    _genderFocusNode.dispose();
    super.dispose();
  }

  void _setupFocusListeners() {
    _nicknameFocusNode.addListener(() {
      if (_nicknameFocusNode.hasFocus) {
        _ageFocusNode.unfocus();
        _genderFocusNode.unfocus();
      }
      setState(() {});
    });

    _ageFocusNode.addListener(() {
      if (_ageFocusNode.hasFocus) {
        _nicknameFocusNode.unfocus();
        _genderFocusNode.unfocus();
      }
      setState(() {});
    });

    _genderFocusNode.addListener(() {
      if (_genderFocusNode.hasFocus) {
        _nicknameFocusNode.unfocus();
        _ageFocusNode.unfocus();
      }
      setState(() {});
    });
    setState(() {});
  }

  void _refresh() {
    UserState state = context.read<UserBloc>().state;
    if (state is AuthenticatedState) {
      setState(() {
        user = state.user;
      });

      _nicknameController.text = user?.nickname ?? "";
      _ageController.text = user?.age.toString() ?? "";
      _genderController.text = user?.gender?.name ?? "";
    }
  }

  void _confirmUpdate() async {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
              shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.all(Radius.circular(Dimens.space16))),
              backgroundColor: Palette.coolGrey10,
              content: SizedBox(
                  width: context.widthInPercent(95),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const AppSpacerV(),
                      AppText('저장할까요?',
                          style: Theme.of(context).textTheme.bodyMedium!),
                      AppSpacerV(value: Dimens.space20),
                      AppText('바꾼 정보를 저장할까요?',
                          style: Theme.of(context).textTheme.labelLarge!),
                      AppSpacerV(value: Dimens.space20),
                      Row(
                        children: [
                          Expanded(
                            child: AppButton(
                                title: '아니요',
                                titleColor: Palette.coolGrey03,
                                color: Colors.transparent,
                                onPressed: () {
                                  context.back();
                                }),
                          ),
                          const AppSpacerH(),
                          Expanded(
                            child: AppButton(
                                title: '네',
                                titleColor: Palette.coolGrey12,
                                color: Palette.lemon01,
                                onPressed: () {
                                  _onUpdate();
                                  context.back();
                                }),
                          )
                        ],
                      )
                    ],
                  )));
        });
  }

  void _onUpdate() async {
    log.d(_genderController.text);
    UpdateUserParams params = UpdateUserParams(
        user_id: user!.id,
        nickname: _nicknameController.text,
        age: _ageController.text,
        gender: Gender.male.name == _genderController.text
            ? Gender.male
            : Gender.female);

    context.read<UserBloc>().add(UpdateUserEvent(params: params));

    context.pop();
    context.showSnackBar(
      AppSnackBar(
          context,
          height: Dimens.space12,
          AppText('내 정보를 수정했어요.',
              style: Theme.of(context).textTheme.bodySmall!)),
    );
    // 사용자 정보 업데이트되는 거 대기
    // await Future.delayed(const Duration(seconds: 1));
    // _refresh();
  }

  String get nicknamechanged =>
      '${user?.nickname} and ${_nicknameController.text}';

  bool get isChanged =>
      user?.nickname != _nicknameController.text ||
      user?.age.toString() != _ageController.text;

  @override
  Widget build(BuildContext context) {
    log.d('isChanged: $isChanged $timestamp');
    log.d(nicknamechanged);
    return Scaffold(
        appBar: AppBar(
          leading: Padding(
            padding: EdgeInsets.only(left: Dimens.space16),
            child: IconButton(
              icon: const Icon(Icons.arrow_back_ios),
              onPressed: () {
                context.back();
              },
            ),
          ),
          title: AppText(
            '내 정보 수정',
            style: Theme.of(context).textTheme.bodyLarge!,
          ),
        ),
        body: BlocConsumer<UserBloc, UserState>(listener: (context, state) {
          if (state is AuthenticatedState) {
            _refresh();
          }
        }, builder: (context, state) {
          return Padding(
            padding: EdgeInsets.symmetric(
                vertical: Dimens.space20, horizontal: Dimens.space20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppTextInput(
                  hint: '프로필명',
                  hintStyle: Theme.of(context).textTheme.labelMedium!.copyWith(
                      color: _nicknameFocusNode.hasFocus
                          ? Palette.lemon04
                          : Palette.coolGrey05),
                  controller: _nicknameController,
                  curFocusNode: _nicknameFocusNode,
                  nextFocusNode: _ageFocusNode,
                  maxLength: 12,
                  maxLine: 1,
                  onTapOutside: (_) {
                    FocusScope.of(context).unfocus();
                  },
                ),
                const AppSpacerV(),
                AppTextInput(
                  hint: '나이',
                  hintStyle: Theme.of(context).textTheme.labelMedium!.copyWith(
                      color: _ageFocusNode.hasFocus
                          ? Palette.lemon04
                          : Palette.coolGrey05),
                  controller: _ageController,
                  curFocusNode: _ageFocusNode,
                  keyboardType: TextInputType.number,
                  maxLength: 2,
                  onTapOutside: (_) {
                    FocusScope.of(context).unfocus();
                  },
                ),
                const AppSpacerV(),
                if (mounted) ...{
                  AppDropDown(
                    hint: '성별',
                    focusNode: _genderFocusNode,
                    hintStyle: Theme.of(context)
                        .textTheme
                        .labelMedium!
                        .copyWith(
                            color: _genderFocusNode.hasFocus
                                ? Palette.lemon04
                                : Palette.coolGrey05),
                    value: _genderController.text,
                    items: Gender.values
                        .map(
                          (data) => DropdownMenuItem(
                            value: data.name,
                            child: AppText(
                              _getGenderName(data, context),
                              style: Theme.of(context).textTheme.bodyMedium!,
                              align: TextAlign.start,
                            ),
                          ),
                        )
                        .toList(),
                    onChanged: (value) {
                      log.d(value);
                    },
                  ),
                },
                const Spacer(),
                AppButton(
                    disable: !isChanged,
                    title: '수정완료',
                    onPressed: _confirmUpdate),
              ],
            ),
          );
        }));
  }

  String _getGenderName(Gender gender, BuildContext context) {
    if (gender == Gender.male) {
      return Gender.male.ko;
    } else {
      return Gender.female.ko;
    }
  }

  TextStyle _hintStyle(FocusNode node) {
    return Theme.of(context)
        .textTheme
        .labelMedium!
        .copyWith(color: node.hasFocus ? Palette.lemon04 : Palette.coolGrey05);
  }
}
