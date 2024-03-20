import 'package:flutter/material.dart';
import 'package:pookaboo/shared/constant/assets.dart';
import 'package:pookaboo/shared/extension/context.dart';
import 'package:pookaboo/shared/styles/dimens.dart';

class ImageSwiper extends StatelessWidget {
  final List<String> images;

  const ImageSwiper({super.key, required this.images});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Dimens.bigImageW,
      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: images.isEmpty ? 1 : images.length,
        itemBuilder: (context, index) {
          return images.isEmpty
              ? SizedBox(
                  width: context.widthInPercent(100),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(Dimens.space12),
                    child: Image.asset(
                      Assets.noImage,
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
                      images[index],
                      fit: BoxFit.cover,
                    ),
                  ),
                );
        },
      ),
    );
  }
}
