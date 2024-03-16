import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:pookaboo/layers/toilet/presentation/bloc/review/review_bloc.dart';
import 'package:pookaboo/shared/constant/images.dart';
import 'package:pookaboo/shared/styles/dimens.dart';
import 'package:pookaboo/shared/styles/palette.dart';
import 'package:pookaboo/shared/widgets/app_divider.dart';
import 'package:pookaboo/shared/widgets/app_spacer_h.dart';
import 'package:pookaboo/shared/widgets/app_spacer_v.dart';
import 'package:pookaboo/shared/widgets/app_text.dart';

class VisitationPage extends StatefulWidget {
  const VisitationPage({super.key});

  @override
  State<VisitationPage> createState() => _VisitationPageState();
}

class _VisitationPageState extends State<VisitationPage> {
  List<Map<String, dynamic>> reviews = [
    {
      "id": 1,
      "image":
          "https://cdn.pixabay.com/photo/2014/02/13/11/56/wc-265278_1280.jpg",
      "name": "송파 파크하이오",
      "date": "2023.02.03"
    },
    {
      "id": 2,
      "image":
          "https://cdn.pixabay.com/photo/2016/09/12/23/35/urinal-1666092_1280.jpg",
      "name": "청량리 현대아파트",
      "date": "2023.04.03"
    },
    {
      "id": 3,
      "image":
          "https://cdn.pixabay.com/photo/2013/05/14/16/56/wc-111092_1280.jpg",
      "name": "동대문 경찰서",
      "date": "2023.03.03"
    }
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: EdgeInsets.only(left: Dimens.space16),
          child: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () {
              context.pop();
            },
          ),
        ),
        title: AppText(
          '최근에 방문한 화장실',
          style: Theme.of(context).textTheme.bodyLarge!,
        ),
      ),
      body: BlocConsumer<ReviewBloc, ReviewState>(
          listener: (context, state) {},
          builder: (context, state) {
            return Padding(
              padding: EdgeInsets.symmetric(vertical: Dimens.space20),
              child: ListView.builder(
                itemCount: reviews.length * 2 - 1,
                itemBuilder: (context, index) {
                  if (index.isOdd) {
                    return Padding(
                      padding: EdgeInsets.symmetric(horizontal: Dimens.space20),
                      child: AppDivider(
                        color: Palette.coolGrey08,
                        height: Dimens.space1,
                      ),
                    ); // 홀수 인덱스에 Divider를 추가합니다.
                  }

                  final reviewIndex = index ~/ 2;
                  final review = reviews[reviewIndex];

                  return Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: Dimens.space20, vertical: Dimens.space20),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(6.67),
                              child: Image.network(
                                review['image'],
                                width: Dimens.imageW,
                                height: Dimens.imageW,
                                fit: BoxFit.cover,
                              ),
                            ),
                            AppSpacerH(
                              value: Dimens.space12,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                AppText(
                                  review['name'],
                                  style: Theme.of(context).textTheme.bodySmall!,
                                ),
                                const AppSpacerV(),
                                AppText(
                                  "${review['date']} 방문",
                                  style:
                                      Theme.of(context).textTheme.labelMedium!,
                                ),
                                const AppSpacerV(),
                              ],
                            ),
                            AppSpacerH(
                              value: Dimens.space12,
                            ),
                          ],
                        ),
                        //
                      ],
                    ),
                  );
                },
              ),
            );
          }),
    );
  }
}
