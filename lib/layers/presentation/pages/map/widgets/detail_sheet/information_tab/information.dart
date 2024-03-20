import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pookaboo/layers/presentation/bloc/user/user_bloc.dart';
import 'package:pookaboo/layers/data/models/toilet/toilet.dart';
import 'package:pookaboo/layers/presentation/pages/map/widgets/detail_sheet/information_tab/amenity_container.dart';
import 'package:pookaboo/layers/presentation/pages/map/widgets/detail_sheet/information_tab/convenience_container.dart';
import 'package:pookaboo/layers/presentation/pages/map/widgets/detail_sheet/information_tab/equipment_container.dart';
import 'package:pookaboo/layers/presentation/pages/map/widgets/detail_sheet/information_tab/image_swiper.dart';
import 'package:pookaboo/shared/constant/enum.dart';
import 'package:pookaboo/shared/styles/dimens.dart';
import 'package:pookaboo/shared/widgets/common/app_divider.dart';
import 'package:pookaboo/shared/widgets/common/app_spacer_v.dart';
import 'package:pookaboo/shared/widgets/common/app_text.dart';

class DetailSheetInformation extends StatefulWidget {
  final Toilet toilet;

  const DetailSheetInformation(
    this.toilet, {
    super.key,
  });

  @override
  State<DetailSheetInformation> createState() => _DetailSheetInformationState();
}

class _DetailSheetInformationState extends State<DetailSheetInformation> {
  late final List<String> _images = [];

  late final List<Map<String, dynamic>> _equipments = [];
  late final List<Map<String, dynamic>> _conveniences = [];
  late final List<Map<String, dynamic>> _amenities = [];

  @override
  void initState() {
    super.initState();

    // 사용자 성별 파악하기
    final state = context.read<UserBloc>().state;

    int? gender = 1;
    if (state is AuthenticatedState) {
      final user = state.user;
      gender = user.isMale() ? 1 : 2;
    }

    // equipment
    for (var equipment in EquipmentKey.values) {
      List<(String, String)> keys = equipment.keys;
      String emoji = equipment.emoji;
      String name = equipment.name;
      int count = 0;

      for (var (key, _) in keys) {
        List<int> equipmentsJson = widget.toilet.equipment?.toJson()[key];
        List<int> equipments = equipmentsJson.map((item) => item).toList();

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
          ImageSwiper(images: _images),
          AppSpacerV(value: Dimens.space30),
          /////////////////////////////////////////////////////////////////////////////////
          ////// Equipment
          /////////////////////////////////////////////////////////////////////////////////
          EquipmentContainer(equipments: _equipments),
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
            ConvenienceContainer(conveniences: _conveniences),
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
            AmenityContainer(amenities: _amenities)
          },
        ],
      ),
    );
  }
}
