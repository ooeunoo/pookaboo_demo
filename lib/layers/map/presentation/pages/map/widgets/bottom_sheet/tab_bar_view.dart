import 'package:flutter/material.dart';
import 'package:pookaboo/layers/map/presentation/pages/map/widgets/bottom_sheet/information.dart';
import 'package:pookaboo/layers/map/presentation/pages/map/widgets/bottom_sheet/review.dart';

class ToiletBottomSeetTabBarView extends StatefulWidget {
  const ToiletBottomSeetTabBarView({super.key});

  @override
  _ToiletBottomSeetTabBarViewState createState() =>
      _ToiletBottomSeetTabBarViewState();
}

class _ToiletBottomSeetTabBarViewState extends State<ToiletBottomSeetTabBarView>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  late List<Map<String, dynamic>> tabs;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    tabs = [
      {"title": '정보'},
      {"title": '평점'},
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Column(
            children: [
              // Add TabBar below ToiletBottomSheetProperty
              TabBar(
                controller: _tabController,
                tabs: tabs
                    .map((tab) => Tab(text: tab["title"] as String))
                    .toList(),
              ),
              // TabBarView for displaying content corresponding to each tab
              SizedBox(
                height: MediaQuery.of(context).size.height *
                    0.5, // Adjust height as needed
                child: TabBarView(
                  controller: _tabController,
                  children: const [
                    // Content for Tab 1
                    ToiletBottomSheetInformation(),
                    // Content for Tab 2
                    ToiletBottomSheetReview()
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
