import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kakao_map_plugin/kakao_map_plugin.dart';
import 'package:pookaboo/layers/presentation/bloc/user/user_bloc.dart';
import 'package:pookaboo/layers/data/models/toilet/toilet.dart';
import 'package:pookaboo/layers/presentation/bloc/map/map_bloc.dart';
import 'package:pookaboo/layers/presentation/bloc/visitation/visitation_bloc.dart';
import 'package:pookaboo/shared/utils/logging/log.dart';
import 'package:pookaboo/shared/widgets/common/app_button.dart';

class DetailSheetButton extends StatefulWidget {
  final Toilet toilet;

  const DetailSheetButton({super.key, required this.toilet});

  @override
  State<DetailSheetButton> createState() => _DetailSheetButtonState();
}

class _DetailSheetButtonState extends State<DetailSheetButton> {
  String? userId;

  @override
  void initState() {
    super.initState();
    UserState state = context.read<UserBloc>().state;
    if (state is AuthenticatedState) {
      String userId = state.user.id;
      setState(() {
        userId = userId;
      });
    }
  }

  void _startNavigation() {
    if (userId != null) {
      context.read<VisitataionBloc>().add(CreateToiletVisitationEvent(
          userId: userId!, toiletId: widget.toilet.id));
    }
    context.read<MapBloc>().add(StartNavigationEvent(toilet: widget.toilet));
  }

  @override
  Widget build(BuildContext context) {
    return AppButton(title: '길찾기', onPressed: _startNavigation);
  }
}
