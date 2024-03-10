import 'package:flutter/material.dart';
import 'package:pookaboo/layers/map/presentation/pages/map/widgets/bottom_sheet/button.dart';
import 'package:pookaboo/layers/map/presentation/pages/map/widgets/bottom_sheet/header.dart';
import 'package:pookaboo/layers/map/presentation/pages/map/widgets/bottom_sheet/location.dart';
import 'package:pookaboo/layers/map/presentation/pages/map/widgets/bottom_sheet/property.dart';
import 'package:pookaboo/layers/map/presentation/pages/map/widgets/bottom_sheet/rating.dart';
import 'package:pookaboo/shared/styles/dimens.dart';
import 'package:pookaboo/shared/widgets/app_spacer_v.dart';

class ToiletBottomSheet extends StatefulWidget {
  final double offset;

  const ToiletBottomSheet({super.key, required this.offset});

  @override
  _ToiletBottomSheetState createState() => _ToiletBottomSheetState();
}

class _ToiletBottomSheetState extends State<ToiletBottomSheet>
    with SingleTickerProviderStateMixin {
  bool isExtend = false;
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    isExtend = widget.offset > 0.4;

    return DefaultTabController(
        length: 2,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: Dimens.space20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ToiletBottomSheetHeader(),
              const AppSpacerV(),
              const ToiletBottomSheetLocation(),
              const AppSpacerV(),
              // isExtend일 경우, ...
              if (isExtend) ...[
                const ToiletBottomSheetRating(),
                const AppSpacerV(),
                const ToiletBottomSheetProperty(),
                const AppSpacerV(),
                const TabBar(
                  tabs: [
                    SizedBox(
                      height: 30,
                      child: Center(
                        child: Text(
                          "1st  tab",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                    Center(
                      child: Text(
                        "2 nd tab",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: TabBarView(
                    controller: _tabController,
                    children: const [Text('people'), Text('Person')],
                  ),
                ),
              ],
              const ToiletBottomSheetButton()
            ],
          ),
        ));
  }
}
