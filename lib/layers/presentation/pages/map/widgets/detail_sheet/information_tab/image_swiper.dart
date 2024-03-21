import 'package:flutter/material.dart';
import 'package:pookaboo/shared/constant/assets.dart';
import 'package:pookaboo/shared/extension/context.dart';
import 'package:pookaboo/shared/styles/dimens.dart';

class ImageSwiper extends StatefulWidget {
  final List<String> images;
  final bool isOwner;

  const ImageSwiper({super.key, required this.images, this.isOwner = false});

  @override
  State<ImageSwiper> createState() => _ImageSwiperState();
}

class _ImageSwiperState extends State<ImageSwiper> {
  bool get isOwner => widget.isOwner;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: Dimens.bigImageW,
          margin: const EdgeInsets.only(left: 20.0, right: 20.0),
          child: widget.images.isEmpty
              ? _noImageContainer()
              : _imagesContainer(widget.images),
        ),
      ],
    );
  }

  Widget _imagesContainer(List<String> images) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: images.isEmpty ? 1 : images.length,
      itemBuilder: (context, index) {
        return Stack(
          children: [
            Container(
              width: Dimens.bigImageW,
              margin: const EdgeInsets.only(right: 10.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(Dimens.space12),
                child: Image.network(
                  images[index],
                  fit: BoxFit.cover,
                ),
              ),
            ),
            if (isOwner) ...{
              Positioned(
                top: Dimens.space8,
                left: Dimens.space10,
                child: GestureDetector(
                  onTap: () {
                    // _removeUploadImages(index);
                  },
                  child: Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.red,
                    ),
                    child: const Icon(
                      Icons.close,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            }
          ],
        );
      },
    );
  }

  Widget _noImageContainer() {
    return Container(
        height: Dimens.bigImageW,
        margin: const EdgeInsets.only(left: 20.0, right: 20.0),
        child: SizedBox(
          width: context.widthInPercent(100),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(Dimens.space12),
            child: Image.asset(
              Assets.noImage,
              fit: BoxFit.cover,
            ),
          ),
        ));
  }
}
