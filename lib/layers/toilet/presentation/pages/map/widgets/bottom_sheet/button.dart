import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kakao_map_plugin/kakao_map_plugin.dart';
import 'package:pookaboo/layers/auth/presentation/bloc/auth_bloc.dart';
import 'package:pookaboo/layers/toilet/data/models/toilet.dart';
import 'package:pookaboo/layers/toilet/presentation/bloc/map/map_bloc.dart';
import 'package:pookaboo/shared/utils/logging/log.dart';
import 'package:pookaboo/shared/widgets/common/app_button.dart';

class ToiletBottomSheetButton extends StatefulWidget {
  final Toilet toilet;

  const ToiletBottomSheetButton({super.key, required this.toilet});

  @override
  State<ToiletBottomSheetButton> createState() =>
      _ToiletBottomSheetButtonState();
}

class _ToiletBottomSheetButtonState extends State<ToiletBottomSheetButton> {
  String? userId;

  @override
  void initState() {
    super.initState();
    _getUserId();
  }

  Future<void> _getUserId() async {
    final authState = context.read<AuthBloc>().state;
    if (authState is AuthenticatedState) {
      userId =
          authState.user.id; // Assuming user id is accessible via 'id' property
      setState(() {}); // Trigger a rebuild to reflect the updated user ID
    }
  }

  @override
  Widget build(BuildContext context) {
    return AppButton(
        title: '길찾기',
        onPressed: () {
          context
              .read<MapBloc>()
              .add(StartNavigationEvent(toilet: widget.toilet));
        });
  }
}
