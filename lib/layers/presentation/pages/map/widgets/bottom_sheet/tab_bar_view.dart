import 'package:blur/blur.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pookaboo/injection.dart';
import 'package:pookaboo/layers/presentation/bloc/user/user_bloc.dart';
import 'package:pookaboo/layers/data/models/toilet/toilet.dart';
import 'package:pookaboo/layers/presentation/bloc/review/review_bloc.dart';
import 'package:pookaboo/layers/presentation/pages/map/widgets/bottom_sheet/information.dart';
import 'package:pookaboo/layers/presentation/pages/map/widgets/bottom_sheet/review.dart';
import 'package:pookaboo/shared/styles/dimens.dart';
import 'package:pookaboo/shared/styles/palette.dart';
import 'package:pookaboo/shared/widgets/common/app_spacer_h.dart';
import 'package:pookaboo/shared/widgets/common/app_spacer_v.dart';

class ToiletBottomSeetTabBarView extends StatefulWidget {
  final Toilet toilet;

  const ToiletBottomSeetTabBarView(this.toilet, {super.key});

  @override
  _ToiletBottomSeetTabBarViewState createState() =>
      _ToiletBottomSeetTabBarViewState();
}

class _ToiletBottomSeetTabBarViewState
    extends State<ToiletBottomSeetTabBarView> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserBloc, UserState>(
        builder: (context, UserState state) {
      bool shouldBlur = state is! AuthenticatedState;

      return Column(
        children: [
          /////////////////////////////////////////////////////////////////////////////////
          ////// TabBar
          /////////////////////////////////////////////////////////////////////////////////
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildTabItem(0, '정보'),
                  AppSpacerH(
                    value: Dimens.space12,
                  ),
                  _buildTabItem(1, '평점'),
                ],
              ),
            ),
          ),
          AppSpacerV(value: Dimens.space20),

          /////////////////////////////////////////////////////////////////////////////////
          ////// TabBar View
          /////////////////////////////////////////////////////////////////////////////////
          IndexedStack(
            index: _selectedIndex,
            children: [
              /////////////////////////////////////
              /////////////////////////////////////
              /////////////////////////////////////

              Visibility(
                visible: _selectedIndex == 0,
                child: shouldBlur
                    ? _blurredContainer(
                        ToiletBottomSheetInformation(widget.toilet))
                    : ToiletBottomSheetInformation(widget.toilet),
              ),

              /////////////////////////////////////
              /////////////////////////////////////
              /////////////////////////////////////

              Visibility(
                visible: _selectedIndex == 1,
                child: BlocProvider(
                  create: (context) => sl<ReviewBloc>()
                    ..add(GetToiletReviewsByToiletIdEvent(
                        toiletId: widget.toilet.id)),
                  child: shouldBlur
                      ? _blurredContainer(
                          ToiletBottomSheetReview(widget.toilet))
                      : ToiletBottomSheetReview(widget.toilet),
                ),
              ),
            ],
          ),
        ],
      );
    });
  }

  /////////////////////////////////////////////////////////////////////////////////
  ////// Tab Item
  /////////////////////////////////////////////////////////////////////////////////
  Widget _buildTabItem(int index, String title) {
    return InkWell(
      splashColor: Colors.transparent,
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Container(
        width: 120, // Adjust the width as needed
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: _selectedIndex == index
                  ? Colors.white
                  : Colors.transparent, // Change color for selected tab
              width: 2.0, // Border width
            ),
          ),
        ),
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: Center(
          child: Text(
            title,
            style: _selectedIndex == index
                ? Theme.of(context).textTheme.bodySmall?.copyWith(
                      fontWeight: FontWeight.w500,
                      fontSize: Dimens.bodySmall,
                      color: Palette.coolGrey01,
                    )
                : Theme.of(context).textTheme.labelLarge?.copyWith(
                      fontWeight: FontWeight.w500,
                      fontSize: Dimens.labelLarge,
                      color: Palette.coolGrey05,
                    ),
          ),
        ),
      ),
    );
  }

  Widget _blurredContainer(Widget child) {
    return child.blurred(
      blur: 3,
      blurColor: Palette.coolGrey11,
    );
  }
}
