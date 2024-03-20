import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:pookaboo/injection.dart';
import 'package:pookaboo/layers/data/models/toilet/toilet.dart';
import 'package:pookaboo/layers/domain/entities/user/create_user_inquiry_params.dart';
import 'package:pookaboo/layers/presentation/bloc/user/user_bloc.dart';
import 'package:pookaboo/layers/presentation/bloc/review/review_bloc.dart';
import 'package:pookaboo/layers/presentation/pages/map/widgets/detail_sheet/inquire_dialog.dart';
import 'package:pookaboo/layers/presentation/pages/map/widgets/detail_sheet/location_guide.dart';
import 'package:pookaboo/layers/presentation/pages/map/widgets/detail_sheet/property.dart';
import 'package:pookaboo/layers/presentation/pages/map/widgets/detail_sheet/tab_bar_view.dart';
import 'package:pookaboo/shared/constant/assets.dart';
import 'package:pookaboo/shared/extension/context.dart';
import 'package:pookaboo/shared/styles/dimens.dart';
import 'package:pookaboo/shared/styles/palette.dart';
import 'package:pookaboo/shared/utils/logging/log.dart';
import 'package:pookaboo/shared/widgets/common/app_button.dart';
import 'package:pookaboo/shared/widgets/common/app_snak_bar.dart';
import 'package:pookaboo/shared/widgets/common/app_spacer_h.dart';
import 'package:pookaboo/shared/widgets/common/app_spacer_v.dart';
import 'package:pookaboo/shared/widgets/common/app_text.dart';

class DetailSheetLayout extends StatefulWidget {
  final bool isExpand;
  final Toilet toilet;

  const DetailSheetLayout({
    super.key,
    required this.isExpand,
    required this.toilet,
  });

  @override
  _DetailSheetLayoutState createState() => _DetailSheetLayoutState();
}

class _DetailSheetLayoutState extends State<DetailSheetLayout> {
  String? userId;
  bool hasEditPermission = false;
  bool isEdit = false;

  @override
  void initState() {
    final state = context.read<UserBloc>().state;

    if (state is AuthenticatedState) {
      userId = state.user.id;
      hasEditPermission = state.user.isOwner();
    }

    super.initState();
  }

  void _toggleEdit() {
    setState(() {
      isEdit = !isEdit;
    });
  }

  void openInquire() {
    context.pop();
    if (userId != null) {
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
                shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.all(Radius.circular(Dimens.space16))),
                backgroundColor: Palette.coolGrey10,
                content: InquireDialog(
                  toilet: widget.toilet,
                  confirmPress: (String inquiry) {
                    context.read<UserBloc>().add(CreateUserInquiryEvent(
                        params: CreateUserInquiryParams(
                            toilet_id: widget.toilet.id,
                            user_id: userId!,
                            inquiry: inquiry)));
                  },
                ));
          });
    } else {
      context.showSnackBar(AppSnackBar(
          context,
          height: Dimens.space12,
          Row(
            children: [
              AppText('로그인',
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: Palette.lemon03, fontWeight: FontWeight.bold)),
              AppText(' 후 이용 해주세요',
                  style: Theme.of(context).textTheme.bodySmall!),
            ],
          )));
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UserBloc, UserState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: Dimens.space20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    /////////////////////////////////////////////
                    ///  HEADER
                    /////////////////////////////////////////////
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppText(widget.toilet.name,
                            style: Theme.of(context).textTheme.bodyLarge!),

                        /////////////////////////////////////////////
                        ///  Edit & Confirm Button
                        /////////////////////////////////////////////
                        Row(
                          children: [
                            GestureDetector(
                              onTap: openInquire,
                              child: AppText('문의하기',
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelMedium!
                                      .copyWith(
                                          height:
                                              Dimens.space20 / Dimens.space9,
                                          color: Palette.blueLatte
                                              .withOpacity(0.9))),
                            ),
                            // const AppSpacerH(),
                            // if (hasEditPermission && widget.isExpand) ...{
                            //   GestureDetector(
                            //       onTap: _toggleEdit,
                            //       child: SvgPicture.asset(
                            //         isEdit ? Assets.confirm : Assets.edit,
                            //         width: Dimens.space24,
                            //         height: Dimens.space24,
                            //         colorFilter: ColorFilter.mode(
                            //           isEdit
                            //               ? Palette.blueLatte
                            //               : Palette.red01,
                            //           BlendMode.srcIn,
                            //         ),
                            //       ))
                            // }
                          ],
                        )
                      ],
                    ),
                    const AppSpacerV(),
                    /////////////////////////////////////////////
                    ///  Location Guide
                    /////////////////////////////////////////////
                    LocationGuide(
                      toilet: widget.toilet,
                    ),
                    const AppSpacerV(),
                  ],
                ),
              ),
              // Divider Padding 때문에 분리함
              if (widget.isExpand) ...[
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: Dimens.space20),
                      child: DetailSheetProperty(widget.toilet),
                    ),
                    const AppSpacerV(),
                    DetailSheetTabBarView(widget.toilet)
                  ],
                ),
              ]
            ],
          );
        });
  }
}
