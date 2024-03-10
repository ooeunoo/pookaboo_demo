import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pookaboo/shared/constant/images.dart';
import 'package:pookaboo/shared/styles/dimens.dart';
import 'package:pookaboo/shared/styles/palette.dart';
import 'package:pookaboo/shared/widgets/app_spacer_h.dart';
import 'package:pookaboo/shared/widgets/app_spacer_v.dart';
import 'package:pookaboo/shared/widgets/app_text.dart';

class ToiletBottomSheetProperty extends StatelessWidget {
  const ToiletBottomSheetProperty({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppSpacerV(
          value: Dimens.space16,
        ),
        Row(children: [
          SvgPicture.asset(
            Images.cafe,
            colorFilter: const ColorFilter.mode(
              Palette.svgIcon,
              BlendMode.srcIn,
            ),
          ),
          const AppSpacerH(),
          AppText("카페 운영", style: Theme.of(context).textTheme.labelMedium!),
        ]),
        const AppSpacerV(),
        Row(children: [
          SvgPicture.asset(
            Images.alarm,
            colorFilter: const ColorFilter.mode(
              Palette.svgIcon,
              BlendMode.srcIn,
            ),
          ),
          const AppSpacerH(),
          AppText("운영 중", style: Theme.of(context).textTheme.labelMedium!),
        ]),
        const AppSpacerV(),
        Row(children: [
          SvgPicture.asset(
            Images.gender,
            colorFilter: const ColorFilter.mode(
              Palette.svgIcon,
              BlendMode.srcIn,
            ),
          ),
          const AppSpacerH(),
          AppText("남녀 분리", style: Theme.of(context).textTheme.labelMedium!),
        ]),
        const AppSpacerV(),
        Row(children: [
          SvgPicture.asset(
            Images.openKey,
            colorFilter: const ColorFilter.mode(
              Palette.svgIcon,
              BlendMode.srcIn,
            ),
          ),
          const AppSpacerH(),
          AppText("비밀번호 있음", style: Theme.of(context).textTheme.labelMedium!),
        ]),
        AppSpacerV(
          value: Dimens.space16,
        ),
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
                      "🔒 스타벅스 비밀번호는 직원에게 문의",
                      style: Theme.of(context).textTheme.labelMedium!,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
