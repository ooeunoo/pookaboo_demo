import 'package:flutter/material.dart';
import 'package:pookaboo/shared/extension/context.dart';
import 'package:pookaboo/shared/styles/dimens.dart';
import 'package:pookaboo/shared/styles/palette.dart';
import 'package:pookaboo/shared/widgets/common/app_divider.dart';
import 'package:pookaboo/shared/widgets/common/app_spacer_v.dart';
import 'package:pookaboo/shared/widgets/common/app_text.dart';

class AnnouncementPage extends StatefulWidget {
  const AnnouncementPage({super.key});

  @override
  _AnnouncementPageState createState() => _AnnouncementPageState();
}

class _AnnouncementPageState extends State<AnnouncementPage> {
  final List<String> _announcements = [];
  @override
  Widget build(BuildContext context) {
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
            '공지사항',
            style: Theme.of(context).textTheme.bodyLarge!,
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: Dimens.space20),
          child: ListView.builder(
            itemCount: _announcements.length,
            itemBuilder: (context, index) {
              if (index.isOdd) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: Dimens.space20),
                  child: AppDivider(
                    color: Palette.coolGrey08,
                    height: Dimens.space1,
                  ),
                );
              }

              final anouncementIndex = index ~/ 2;
              final anouncement = _announcements[anouncementIndex];

              return InkWell(
                splashColor: Colors.transparent,
                onTap: () {
                  // if (!visitation.reviewed) {
                  //   _showBottomSheet(visitation);
                  // }
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: Dimens.space20, vertical: Dimens.space20),
                  child: const Column(
                    children: [
                      // AppReviewHeader(
                      //   image: visitation.toilet.image_url,
                      //   name: visitation.toilet.name,
                      //   date: visitation.created_at,
                      //   reviewed: visitation.reviewed,
                      // )
                    ],
                  ),
                ),
              );
            },
          ),
        ));
  }
}
