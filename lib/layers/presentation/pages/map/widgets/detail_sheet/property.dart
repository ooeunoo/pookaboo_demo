import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pookaboo/layers/data/models/toilet/toilet.dart';
import 'package:pookaboo/shared/constant/enum.dart';
import 'package:pookaboo/shared/constant/assets.dart';
import 'package:pookaboo/shared/styles/dimens.dart';
import 'package:pookaboo/shared/styles/palette.dart';
import 'package:pookaboo/shared/utils/helper/time_helper.dart';
import 'package:pookaboo/shared/utils/logging/log.dart';
import 'package:pookaboo/shared/widgets/common/app_spacer_h.dart';
import 'package:pookaboo/shared/widgets/common/app_spacer_v.dart';
import 'package:pookaboo/shared/widgets/common/app_text.dart';

class DetailSheetProperty extends StatefulWidget {
  final Toilet toilet;

  const DetailSheetProperty(this.toilet, {super.key});

  @override
  State<DetailSheetProperty> createState() => _DetailSheetPropertyState();
}

class _DetailSheetPropertyState extends State<DetailSheetProperty> {
  bool isExpandTimeSchedule = false;

  late String rating;
  late String totalReviews;
  late int toiletType;
  late bool isGenderSeperate;
  late bool hasPassword;
  late String passwordTip;
  late Time time;

  @override
  void initState() {
    super.initState();
    rating = Rating.getAverageRating(widget.toilet.rating!).toString();
    totalReviews = widget.toilet.total_review.toString();
    toiletType = widget.toilet.type;
    isGenderSeperate = widget.toilet.gender;
    hasPassword = widget.toilet.password;
    passwordTip = widget.toilet.password_tip;

    // 현재 요일과 시간
    time = widget.toilet.time!;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(children: [
          SvgPicture.asset(Assets.star),
          const AppSpacerH(),
          AppText("$rating ($totalReviews)",
              style: Theme.of(context).textTheme.labelMedium!),
          const AppSpacerH(),
        ]),
        AppSpacerV(
          value: Dimens.space16,
        ),
        _type(toiletType),
        const AppSpacerV(),
        _open(time),
        const AppSpacerV(),
        _gender(isGenderSeperate),
        const AppSpacerV(),
        _password(hasPassword, passwordTip: passwordTip)
      ],
    );
  }

  Widget _type(int type) {
    return type == ToiletType.building.index
        ? Row(children: [
            SvgPicture.asset(
              Assets.building,
              colorFilter: const ColorFilter.mode(
                Palette.coolGrey05,
                BlendMode.srcIn,
              ),
            ),
            const AppSpacerH(),
            AppText("빌딩 운영", style: Theme.of(context).textTheme.labelMedium!),
          ])
        : Row(children: [
            SvgPicture.asset(
              Assets.cafe,
              colorFilter: const ColorFilter.mode(
                Palette.coolGrey05,
                BlendMode.srcIn,
              ),
            ),
            const AppSpacerH(),
            AppText("카페 운영", style: Theme.of(context).textTheme.labelMedium!),
          ]);
  }

  Widget _open(Time time) {
    // 오늘 날짜 및 현재 시간
    Map<String, dynamic> cur = getCurrentDayAndTime();
    String today = cur['day'];
    String currentTime = cur['time'];

    // 화장실 오늘 요일 오픈, 마감 시간
    OperateTime operateTodayTime = time.toJson()[today];
    String? openTime = operateTodayTime.open;
    String? closeTime = operateTodayTime.close;

    // 시간이 유효한지 확인
    String openTimeFormat = formatTime(openTime);
    String closeTimeFormat = formatTime(closeTime);

    bool isCurrentOpen = isCurrentlyOpen(currentTime, openTime, closeTime);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(children: [
          SvgPicture.asset(
            Assets.alarm,
            colorFilter: const ColorFilter.mode(
              Palette.coolGrey05,
              BlendMode.srcIn,
            ),
          ),
          const AppSpacerH(),
          if (isCurrentOpen) ...[
            Row(
              children: [
                AppText("운영중",
                    style: Theme.of(context)
                        .textTheme
                        .labelMedium!
                        .copyWith(color: Palette.skyblue01)),
                AppText(" ﹒ $openTimeFormat ~ $closeTimeFormat",
                    style: Theme.of(context).textTheme.labelMedium!),
              ],
            )
          ] else ...[
            AppText("운영 안함",
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .copyWith(color: Palette.red01)),
          ],
          const AppSpacerH(),
          InkWell(
            splashColor: Colors.transparent,
            onTap: () {
              setState(() {
                isExpandTimeSchedule =
                    !isExpandTimeSchedule; // Toggle the state
              });
            },
            child: SvgPicture.asset(
              isExpandTimeSchedule ? Assets.arrowTop : Assets.arrowBottom,
              colorFilter: const ColorFilter.mode(
                Palette.coolGrey05,
                BlendMode.srcIn,
              ),
            ),
          )
        ]),
        if (isExpandTimeSchedule) ...[
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: Dimens.space24, vertical: Dimens.space4),
            child: _timeScheduler(time),
          )
        ]
      ],
    );
  }

  Widget _timeScheduler(Time time) {
    List<Widget> timeTextWidgets = [];

    for (var day in WeekKey.values) {
      String key = day.key;

      // 화장실 오늘 요일 오픈, 마감 시간
      OperateTime operateTodayTime = time.toJson()[key];
      String? openTime = operateTodayTime.open;
      String? closeTime = operateTodayTime.close;

      String timeFormat =
          '${day.ko} ﹒ ${formatTime(openTime)} ~ ${formatTime(closeTime)}';

      timeTextWidgets.add(
        Padding(
          padding: EdgeInsets.symmetric(vertical: Dimens.space2),
          child: AppText(timeFormat,
              style: Theme.of(context).textTheme.labelMedium!),
        ),
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: timeTextWidgets,
    );
  }

  Widget _gender(bool isGenderSeperate) {
    return Row(children: [
      SvgPicture.asset(
        Assets.gender,
        colorFilter: const ColorFilter.mode(
          Palette.coolGrey05,
          BlendMode.srcIn,
        ),
      ),
      const AppSpacerH(),
      AppText(isGenderSeperate ? "남녀 분리" : '남녀 공용',
          style: Theme.of(context).textTheme.labelMedium!),
    ]);
  }

  Widget _password(bool hasPassword, {String? passwordTip}) {
    return Column(
      children: [
        Row(children: [
          SvgPicture.asset(
            Assets.openKey,
            colorFilter: const ColorFilter.mode(
              Palette.coolGrey05,
              BlendMode.srcIn,
            ),
          ),
          const AppSpacerH(),
          AppText(hasPassword ? "비밀번호 있음" : '비밀번호 없음',
              style: Theme.of(context).textTheme.labelMedium!),
        ]),
        AppSpacerV(
          value: Dimens.space16,
        ),
        if (hasPassword && passwordTip != "") ...[
          Card(
            elevation: 1,
            color: const Color(0xff202328),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(Dimens.space12),
            ),
            child: Container(
              height: Dimens.space48,
              padding: EdgeInsets.all(Dimens.space12),
              child: Row(
                children: [
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: AppText(
                        passwordTip!,
                        style: Theme.of(context).textTheme.labelMedium!,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ]
      ],
    );
  }
}
