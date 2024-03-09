import 'package:flutter/material.dart';
import 'package:pookaboo/shared/styles/dimens.dart';
import 'package:pookaboo/shared/widgets/app_spacer_h.dart';
import 'package:pookaboo/shared/widgets/app_spacer_v.dart';
import 'package:pookaboo/shared/widgets/app_text.dart';

class ReviewUndone extends StatefulWidget {
  const ReviewUndone({super.key});

  @override
  State<ReviewUndone> createState() => _ReviewUndoneState();
}

class _ReviewUndoneState extends State<ReviewUndone> {
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
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: reviews.length * 2 - 1, // Divider를 추가하기 위해 항목 수를 2배로 늘립니다.
      itemBuilder: (context, index) {
        if (index.isOdd) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: Dimens.space20),
            child: const Divider(),
          ); // 홀수 인덱스에 Divider를 추가합니다.
        }

        final reviewIndex = index ~/ 2;
        final review = reviews[reviewIndex];

        return Padding(
          padding: EdgeInsets.symmetric(
              horizontal: Dimens.space20, vertical: Dimens.space20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(6.67), // 이미지를 네모난 느낌으로 만듦
                child: Image.network(
                  review['image'],
                  width: 46,
                  height: 46,
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
                    style: Theme.of(context).textTheme.labelMedium!,
                  ),
                  const AppSpacerV(),
                  Row(
                    children: [
                      AppText(
                        '청결도 ',
                        style: Theme.of(context).textTheme.labelLarge!,
                      ),
                      const Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 16,
                      ),
                      const Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 16,
                      ),
                      const Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 16,
                      ),
                      const Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 16,
                      ),
                      const Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 16,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
