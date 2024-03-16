import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pookaboo/layers/auth/presentation/bloc/auth_bloc.dart';
import 'package:pookaboo/layers/toilet/data/models/toilet.dart';
import 'package:pookaboo/layers/toilet/presentation/pages/map/widgets/bottom_sheet/bottom_sheet_main.dart';
import 'package:pookaboo/layers/toilet/presentation/pages/map/widgets/bottom_sheet/button.dart';
import 'package:pookaboo/layers/toilet/presentation/pages/map/widgets/bottom_sheet/sign_in_message.dart';
import 'package:pookaboo/shared/styles/dimens.dart';
import 'package:pookaboo/shared/widgets/app_drag_handle_bar.dart';

class ToiletBottomSheet extends StatefulWidget {
  final ScrollController controller;
  final Toilet toilet;
  final double offset;

  const ToiletBottomSheet(
      {super.key,
      required this.offset,
      required this.toilet,
      required this.controller});

  @override
  State<ToiletBottomSheet> createState() => _ToiletBottomSheetState();
}

class _ToiletBottomSheetState extends State<ToiletBottomSheet> {
  bool isExpand = false;

  @override
  Widget build(BuildContext context) {
    isExpand = widget.offset > 0.4;

    return Stack(
      children: [
        Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: EdgeInsets.all(Dimens.space12),
            child: const AppDragHandleBar(),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: Dimens.space36),
          child: SingleChildScrollView(
            controller: widget.controller,
            child: Column(
              children: [
                BottomSheetMain(
                  toilet: widget.toilet,
                  isExpand: isExpand,
                ),
              ],
            ),
          ),
        ),
        BlocBuilder<AuthBloc, AuthState>(builder: (context, AuthState state) {
          bool isAuthenticated = state is AuthenticatedState;
          return Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.all(Dimens.space20),
              child: !isAuthenticated && isExpand
                  ? const LogInMessage()
                  : ToiletBottomSheetButton(toilet: widget.toilet),
            ),
          );
        })
      ],
    );
  }
}
