import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kakao_map_plugin/kakao_map_plugin.dart';
import 'package:pookaboo/layers/auth/presentation/bloc/auth_bloc.dart';
import 'package:pookaboo/layers/map/data/models/toilet.dart';
import 'package:pookaboo/layers/map/presentation/bloc/map_bloc.dart';
import 'package:pookaboo/shared/utils/logging/log.dart';
import 'package:pookaboo/shared/widgets/app_button.dart';

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
      log.d(userId);
      setState(() {}); // Trigger a rebuild to reflect the updated user ID
    }
  }

  @override
  Widget build(BuildContext context) {
    return AppButton(
      title: '길찾기',
      onPressed: userId != null
          ? () {
              context.read<MapBloc>().add(
                    StartDirectionsEvent(
                      toilet: widget.toilet,
                      userId: userId!,
                      convenience: 2,
                      management: 2,
                      safety: 2,
                      cleanliness: 2,
                      comment: '가자 좋아',
                    ),
                  );
            }
          : () {},
    );
  }
}
