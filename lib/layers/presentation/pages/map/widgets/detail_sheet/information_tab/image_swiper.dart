import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:pookaboo/layers/presentation/bloc/user/user_bloc.dart';
import 'package:pookaboo/layers/presentation/cubit/app/app_cubit.dart';
import 'package:pookaboo/shared/constant/assets.dart';
import 'package:pookaboo/shared/extension/context.dart';
import 'package:pookaboo/shared/styles/dimens.dart';
import 'package:pookaboo/shared/styles/palette.dart';
import 'package:pookaboo/shared/widgets/common/app_button.dart';
import 'package:pookaboo/shared/widgets/common/app_spacer_h.dart';
import 'package:pookaboo/shared/widgets/common/app_spacer_v.dart';

class ImageSwiper extends StatefulWidget {
  final List<String> images;

  const ImageSwiper({super.key, required this.images});

  @override
  State<ImageSwiper> createState() => _ImageSwiperState();
}

class _ImageSwiperState extends State<ImageSwiper> {
  bool isOwner = false;

  @override
  void initState() {
    final state = context.read<UserBloc>().state;

    if (state is AuthenticatedState) {
      isOwner = state.user.isOwner();
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: Dimens.bigImageW,
          margin: const EdgeInsets.only(left: 20.0, right: 20.0),
          child: widget.images.isEmpty
              ? GestureDetector(
                onTap: () {
                  if (isOwner) {

                  }
                  return;
                },
                child: SizedBox(
                    width: context.widthInPercent(100),
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(Dimens.space12),
                          child: Image.asset(
                            Assets.noImage,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ),
              )
              : ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: widget.images.isEmpty ? 1 : widget.images.length,
                  itemBuilder: (context, index) {
                    return Container(
                      width: Dimens.bigImageW,
                      margin: const EdgeInsets.only(right: 10.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(Dimens.space12),
                        child: Image.network(
                          widget.images[index],
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                ),
        ),
      ],
    );
  }
}
