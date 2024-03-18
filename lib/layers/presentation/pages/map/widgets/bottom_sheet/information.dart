import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pookaboo/layers/presentation/bloc/auth/auth_bloc.dart';
import 'package:pookaboo/layers/data/models/toilet/toilet.dart';
import 'package:pookaboo/shared/constant/enum.dart';
import 'package:pookaboo/shared/constant/images.dart';
import 'package:pookaboo/shared/extension/context.dart';
import 'package:pookaboo/shared/styles/dimens.dart';
import 'package:pookaboo/shared/styles/palette.dart';
import 'package:pookaboo/shared/widgets/common/app_divider.dart';
import 'package:pookaboo/shared/widgets/common/app_spacer_h.dart';
import 'package:pookaboo/shared/widgets/common/app_spacer_v.dart';
import 'package:pookaboo/shared/widgets/common/app_text.dart';

class ToiletBottomSheetInformation extends StatefulWidget {
  final Toilet toilet;

  const ToiletBottomSheetInformation(
    this.toilet, {
    super.key,
  });

  @override
  State<ToiletBottomSheetInformation> createState() =>
      _ToiletBottomSheetInformationState();
}

class _ToiletBottomSheetInformationState
    extends State<ToiletBottomSheetInformation> {
  late final List<String> _images = [];

  late final List<Map<String, dynamic>> _equipments = [];
  late final List<Map<String, dynamic>> _conveniences = [];
  late final List<Map<String, dynamic>> _amenities = [];

  @override
  void initState() {
    super.initState();

    // 사용자 성별 파악하기
    final authBloc = BlocProvider.of<AuthBloc>(context);

    int? gender = 1;
    if (authBloc.state is AuthenticatedState) {
      final user = (authBloc.state as AuthenticatedState).user;
      gender = user.isMale() ? 1 : 2;
    }

    // equipment
    for (var equipment in EquipmentKey.values) {
      List<String> keys = equipment.keys;
      String emoji = equipment.emoji;
      String name = equipment.name;
      int count = 0;

      for (var key in keys) {
        String equipmentsJsonString = widget.toilet.equipment?.toJson()[key];
        var equipmentsJson = jsonDecode(equipmentsJsonString) as List<dynamic>;
        List<int> equipments =
            equipmentsJson.map((item) => item as int).toList();

        bool seperate = widget.toilet.gender;

        if (equipments.isNotEmpty) {
          count += equipments[seperate ? gender : 0];
        }
      }

      _equipments.add({
        'section': 'equipment',
        "emoji": emoji,
        "title": name,
        "value": count.toString()
      });
    }

    // convenience
    for (var convenience in ConvenienceKey.values) {
      String key = convenience.key;
      String emoji = convenience.emoji;
      String name = convenience.name;
      bool hasConvenience = widget.toilet.convenience?.toJson()[key];
      if (hasConvenience) {
        _conveniences
            .add({'section': 'convenience', "emoji": emoji, "title": name});
      }
    }

    // amenity
    for (var amenity in AmenityKey.values) {
      String key = amenity.key;
      String emoji = amenity.emoji;
      String name = amenity.name;
      bool hasAmenity = widget.toilet.convenience?.toJson()[key];

      if (hasAmenity) {
        _amenities.add({'section': 'amenity', "emoji": emoji, "title": name});
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: Dimens.space100),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /////////////////////////////////////////////////////////////////////////////////
          ////// Image Swipe
          /////////////////////////////////////////////////////////////////////////////////
          Container(
            height: Dimens.bigImageW,
            margin: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: _images.isEmpty ? 1 : _images.length,
              itemBuilder: (context, index) {
                return _images.isEmpty
                    ? SizedBox(
                        width: context.widthInPercent(100),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(Dimens.space12),
                          child: Image.asset(
                            Images.noImage,
                            fit: BoxFit.cover,
                          ),
                        ),
                      )
                    : Container(
                        width: Dimens.bigImageW,
                        margin: const EdgeInsets.only(right: 10.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(Dimens.space12),
                          child: Image.network(
                            _images[index],
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
              },
            ),
          ),
          AppSpacerV(value: Dimens.space30),
          /////////////////////////////////////////////////////////////////////////////////
          ////// Equipment
          /////////////////////////////////////////////////////////////////////////////////
          Column(mainAxisSize: MainAxisSize.min, children: [
            ..._equipments.map((equipment) {
              return Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: Dimens.space20, vertical: Dimens.space12),
                child: _equipmentWidget(
                    equipment["emoji"], equipment["title"], equipment["value"]),
              );
            })
          ]),

          /////////////////////////////////////////////////////////////////////////////////
          ////// Convenience
          /////////////////////////////////////////////////////////////////////////////////
          if (_conveniences.isNotEmpty) ...{
            AppSpacerV(value: Dimens.space30),
            const AppDivider(),
            AppSpacerV(value: Dimens.space30),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: Dimens.space20),
              child: AppText("편의시설",
                  style: Theme.of(context).textTheme.bodyMedium!),
            ),
            AppSpacerV(value: Dimens.space30),
            Column(mainAxisSize: MainAxisSize.min, children: [
              ..._conveniences.map((convenience) {
                return Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: Dimens.space20, vertical: Dimens.space12),
                    child: _convenienceWidget(
                        convenience["emoji"], convenience["title"]));
              })
            ]),
          },

          /////////////////////////////////////////////////////////////////////////////////
          ////// Amenity
          /////////////////////////////////////////////////////////////////////////////////
          if (_amenities.isNotEmpty) ...{
            AppSpacerV(value: Dimens.space30),
            const AppDivider(),
            AppSpacerV(value: Dimens.space30),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: Dimens.space20),
              child: AppText("어메니티",
                  style: Theme.of(context).textTheme.bodyMedium!),
            ),
            AppSpacerV(value: Dimens.space30),
            Column(mainAxisSize: MainAxisSize.min, children: [
              ..._amenities.map((amenity) {
                return Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: Dimens.space20, vertical: Dimens.space12),
                    child: _amenityWidget(amenity["emoji"], amenity["title"]));
              })
            ]),
          },
        ],
      ),
    );
  }

  Widget _equipmentWidget(String emoji, String title, String count) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Row(
        children: [
          Container(
            width: Dimens.space40,
            height: Dimens.space40,
            decoration: BoxDecoration(
              color: const Color(0xff31363F),
              borderRadius: BorderRadius.circular(Dimens.space60),
            ),
            child: Center(
                child: AppText(emoji,
                    style: Theme.of(context).textTheme.bodySmall!)),
          ),
          const AppSpacerH(),
          AppText(title, style: Theme.of(context).textTheme.bodySmall!),
          const AppSpacerH(),
          Container(
            decoration: BoxDecoration(
              color: Palette.coolGrey10,
              borderRadius: BorderRadius.circular(Dimens.space4),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: Dimens.space4, vertical: Dimens.space2),
              child: Center(
                  child: AppText("장애인",
                      style: Theme.of(context).textTheme.labelMedium!)),
            ),
          ),
          AppSpacerH(value: Dimens.space4),
          Container(
            decoration: BoxDecoration(
              color: Palette.coolGrey10,
              borderRadius: BorderRadius.circular(Dimens.space4),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: Dimens.space4, vertical: Dimens.space2),
              child: Center(
                  child: AppText("어린이",
                      style: Theme.of(context).textTheme.labelMedium!)),
            ),
          ),
        ],
      ),
      AppText('$count 개', style: Theme.of(context).textTheme.labelLarge!)
    ]);
  }

  Widget _convenienceWidget(String emoji, String title) {
    return Row(children: [
      AppText(emoji, style: Theme.of(context).textTheme.bodySmall!),
      const AppSpacerH(),
      AppText(title, style: Theme.of(context).textTheme.bodySmall!),
      const AppSpacerH(),
    ]);
  }

  Widget _amenityWidget(String emoji, String title) {
    return Row(children: [
      AppText(emoji, style: Theme.of(context).textTheme.bodySmall!),
      const AppSpacerH(),
      AppText(title, style: Theme.of(context).textTheme.bodySmall!),
      const AppSpacerH(),
    ]);
  }
}
