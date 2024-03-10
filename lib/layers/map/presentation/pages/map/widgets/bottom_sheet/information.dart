import 'package:flutter/material.dart';
import 'package:pookaboo/shared/styles/dimens.dart';
import 'package:pookaboo/shared/widgets/app_divider.dart';
import 'package:pookaboo/shared/widgets/app_spacer_v.dart';
import 'package:pookaboo/shared/widgets/app_text.dart';

class ToiletBottomSheetInformation extends StatefulWidget {
  const ToiletBottomSheetInformation({
    super.key,
  });

  @override
  State<ToiletBottomSheetInformation> createState() =>
      _ToiletBottomSheetInformationState();
}

class _ToiletBottomSheetInformationState
    extends State<ToiletBottomSheetInformation> {
  final List<String> imgList = [
    'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
    'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
    'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
    'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
  ];
  late List<Map<String, dynamic>> menu;
  @override
  void initState() {
    super.initState();
    menu = [
      {
        "section": "1",
        "title": "Toilet Review",
      },
      {
        "section": "1",
        "title": "Edit My Info",
      },
      {
        "section": "1",
        "title": "Logout",
      },
      {
        "section": "2",
        "title": "Withdraw Membership",
      },
      {
        "section": "2",
        "title": "Withdraw Membership",
      },
      {
        "section": "2",
        "title": "Withdraw Membership",
      },
      {
        "section": "2",
        "title": "Withdraw Membership",
      },
      {
        "section": "2",
        "title": "Withdraw Membership",
      },
      {
        "section": "2",
        "title": "Withdraw Membership",
      },
      {
        "section": "2",
        "title": "Withdraw Membership",
      },
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: Dimens.space20),
          child: SizedBox(
            height: Dimens.bigImageW,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: imgList.length,
              itemBuilder: (context, index) {
                return Container(
                  width: Dimens.bigImageW,
                  margin: const EdgeInsets.only(right: 10.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(Dimens.space12),
                    child: Image.network(
                      imgList[index],
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            ),
          ),
        ),
        const AppSpacerV(),
        ListView.separated(
          shrinkWrap:
              true, // Ensure the ListView takes only the necessary space
          physics:
              const NeverScrollableScrollPhysics(), // Prevent the ListView from scrolling
          itemCount: menu.length,
          separatorBuilder: (context, index) {
            if (index < menu.length - 1 &&
                menu[index]["section"] != menu[index + 1]["section"]) {
              return const AppDivider();
            } else {
              return const SizedBox();
            }
          },
          itemBuilder: (context, index) {
            final item = menu[index];
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: Dimens.space20),
              child: ListTile(
                leading: AppText(
                  item['title'],
                  style: Theme.of(context).textTheme.bodyLarge!,
                ),
                onTap: () {
                  // Handle onTap action
                },
              ),
            );
          },
        ),
      ],
    );
  }
}
