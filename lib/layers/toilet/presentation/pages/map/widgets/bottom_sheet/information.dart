import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pookaboo/layers/auth/presentation/bloc/auth_bloc.dart';
import 'package:pookaboo/layers/toilet/data/models/toilet.dart';
import 'package:pookaboo/shared/constant/enum.dart';
import 'package:pookaboo/shared/constant/images.dart';
import 'package:pookaboo/shared/styles/dimens.dart';
import 'package:pookaboo/shared/styles/palette.dart';
import 'package:pookaboo/shared/utils/logging/log.dart';
import 'package:pookaboo/shared/widgets/app_divider.dart';
import 'package:pookaboo/shared/widgets/app_spacer_h.dart';
import 'package:pookaboo/shared/widgets/app_spacer_v.dart';
import 'package:pookaboo/shared/widgets/app_text.dart';

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
  late final List<String> _images = [
    'https://cdn.pixabay.com/photo/2023/09/30/17/13/coffee-beans-8286087_1280.jpg',
    'https://media.istockphoto.com/id/814684194/ko/%EC%82%AC%EC%A7%84/%EC%9B%90%EB%91%90-%EC%BB%A4%ED%94%BC-%EA%B7%B8%EB%A6%AC%EA%B3%A0-%EB%9D%BC-%EB%96%BC-%EC%95%84%ED%8A%B8-%EB%82%98%EB%AC%B4-%EB%B0%B0%EA%B2%BD%EC%97%90-%EB%9C%A8%EA%B1%B0%EC%9A%B4-cofee-%EC%BB%B5-%ED%85%8D%EC%8A%A4%ED%8A%B8-%EB%B3%B5%EC%82%AC-%EA%B3%B5%EA%B0%84-%EC%B8%A1%EB%A9%B4-%EB%B3%B4%EA%B8%B0.jpg?s=2048x2048&w=is&k=20&c=JEYe0Tw3fIEcDvkU10sp7NVsJ5G3Clgg0G5sje5_Snc='
  ];

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
      gender = user.userMetadata!['gender'] == Gender.male.name ? 1 : 2;
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
          log.d(equipments);
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
                        width: Dimens.fullWidth(context),
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
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: _equipments.length,
            itemBuilder: (context, index) {
              final equipment = _equipments[index];

              return Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: Dimens.space20, vertical: Dimens.space12),
                child: _equipmentWidget(
                    equipment["emoji"], equipment["title"], equipment["value"]),
              );
            },
          ),

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
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: _conveniences.length,
              itemBuilder: (context, index) {
                final convenience = _conveniences[index];

                return Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: Dimens.space20, vertical: Dimens.space12),
                    child: _convenienceWidget(
                        convenience["emoji"], convenience["title"]));
              },
            ),
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
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: _amenities.length,
              itemBuilder: (context, index) {
                final amenity = _amenities[index];

                return Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: Dimens.space20, vertical: Dimens.space12),
                    child: _amenityWidget(amenity["emoji"], amenity["title"]));
              },
            ),
          }
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
