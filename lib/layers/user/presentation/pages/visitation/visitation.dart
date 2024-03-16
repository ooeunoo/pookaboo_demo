import 'package:bottom_sheet/bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:pookaboo/injection.dart';
import 'package:pookaboo/layers/toilet/data/models/toilet.dart';
import 'package:pookaboo/layers/toilet/data/models/visitation.dart';
import 'package:pookaboo/layers/toilet/presentation/bloc/visitation/visitation_bloc.dart';
import 'package:pookaboo/layers/user/presentation/pages/visitation/widgets/review_form.dart';
import 'package:pookaboo/layers/user/presentation/pages/visitation/widgets/review_form_bottom_sheet/comment_form.dart';
import 'package:pookaboo/layers/user/presentation/pages/visitation/widgets/review_form_bottom_sheet/header.dart';
import 'package:pookaboo/layers/user/presentation/pages/visitation/widgets/review_form_bottom_sheet/main.dart';
import 'package:pookaboo/layers/user/presentation/pages/visitation/widgets/review_form_bottom_sheet/rating_form.dart';
import 'package:pookaboo/mocks/image.dart';
import 'package:pookaboo/shared/constant/images.dart';
import 'package:pookaboo/shared/service/storage/secure_storage.dart';
import 'package:pookaboo/shared/styles/dimens.dart';
import 'package:pookaboo/shared/styles/palette.dart';
import 'package:pookaboo/shared/utils/helper/time_helper.dart';
import 'package:pookaboo/shared/utils/logging/log.dart';
import 'package:pookaboo/shared/widgets/common/app_button.dart';
import 'package:pookaboo/shared/widgets/common/app_divider.dart';
import 'package:pookaboo/shared/widgets/common/app_spacer_h.dart';
import 'package:pookaboo/shared/widgets/common/app_spacer_v.dart';
import 'package:pookaboo/shared/widgets/common/app_text.dart';
import 'package:pookaboo/shared/widgets/review_header.dart';

class VisitationPage extends StatefulWidget {
  const VisitationPage({super.key});

  @override
  State<VisitationPage> createState() => _VisitationPageState();
}

class _VisitationPageState extends State<VisitationPage> {
  final SecureStorage _secureStorage = sl<SecureStorage>();

  late List<Visitation> _visitations = [];

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void _loadVisitations() async {
    final userId = await _secureStorage.get(StorageKeys.loggedInUser);
    if (userId != null) {
      context
          .read<VisitataionBloc>()
          .add(GetToiletVisitationsByUserIdEvent(userId: userId));
    }
  }

  void _showBottomSheet(BuildContext context, Visitation visitation) async {
    showModalBottomSheet(
        context: context,
        useRootNavigator: true,
        isScrollControlled: true,
        isDismissible: true,
        elevation: 10,
        useSafeArea: true,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(Dimens.space20),
                topRight: Radius.circular(Dimens.space20))),
        builder: (context) {
          return SizedBox(
            height: Dimens.fullHeight(context) * 0.9,
            child: Padding(
              padding: MediaQuery.of(context).viewInsets,
              child: ReviewForm(visitation: visitation),
            ),
          );
        });
  }

  void _setVisitations(List<Visitation> visitations) {
    _visitations = visitations;
  }

  @override
  Widget build(BuildContext context) {
    _loadVisitations();

    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: EdgeInsets.only(left: Dimens.space16),
          child: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () {
              context.pop();
            },
          ),
        ),
        title: AppText(
          '최근에 방문한 화장실',
          style: Theme.of(context).textTheme.bodyLarge!,
        ),
      ),
      body: BlocBuilder<VisitataionBloc, VisitationState>(
          builder: (context, state) {
        log.d(state);
        if (state is LoadedToiletVisitationsByUserIdState) {
          _setVisitations(state.visitations);
        }
        return Padding(
          padding: EdgeInsets.symmetric(vertical: Dimens.space20),
          child: ListView.builder(
            itemCount: _visitations.isEmpty ? 0 : _visitations.length * 2 - 1,
            itemBuilder: (context, index) {
              if (index.isOdd) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: Dimens.space20),
                  child: AppDivider(
                    color: Palette.coolGrey08,
                    height: Dimens.space1,
                  ),
                ); // 홀수 인덱스에 Divider를 추가합니다.
              }

              final visitationIndex = index ~/ 2;
              final visitation = _visitations[visitationIndex];

              return InkWell(
                key: Key(visitationIndex.toString()),
                onTap: () {
                  log.d('click');
                  _showBottomSheet(context, visitation);
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: Dimens.space20, vertical: Dimens.space20),
                  child: Column(
                    children: [
                      ReviewHeader(
                          image: mockImage,
                          name: visitation.toilet.name,
                          date: visitation.created_at)
                    ],
                  ),
                ),
              );
            },
          ),
        );
      }),
    );
  }
}
