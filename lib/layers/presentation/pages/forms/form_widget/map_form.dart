import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:geolocator/geolocator.dart';
import 'package:kakao_map_plugin/kakao_map_plugin.dart';
import 'package:pookaboo/injection.dart';
import 'package:pookaboo/layers/domain/entities/form/step/map_step.dart';
import 'package:pookaboo/layers/domain/entities/form/step/multi_select_step.dart';
import 'package:pookaboo/layers/domain/entities/form/step/step_result.dart';
import 'package:pookaboo/layers/presentation/pages/forms/form_widget/material/form_button.dart';
import 'package:pookaboo/layers/presentation/pages/forms/form_widget/material/form_container.dart';
import 'package:pookaboo/shared/constant/config.dart';
import 'package:pookaboo/shared/constant/images.dart';
import 'package:pookaboo/shared/service/geolocator/geolocator_service.dart';
import 'package:pookaboo/shared/styles/dimens.dart';
import 'package:pookaboo/shared/styles/palette.dart';
import 'package:pookaboo/shared/widgets/common/app_spacer_h.dart';
import 'package:pookaboo/shared/widgets/common/app_spacer_v.dart';

class MapForm extends StatefulWidget {
  final MapStep step;
  final void Function(StepResult? result) onNextPress;
  final void Function() onBackPress;

  const MapForm(
      {super.key,
      required this.step,
      required this.onNextPress,
      required this.onBackPress});

  @override
  _MapFormState createState() => _MapFormState();
}

class _MapFormState extends State<MapForm> {
  MapStep get step => widget.step;
  late KakaoMapController _controller;
  final GeolocatorService _geolocatorService = sl<GeolocatorService>();

  final LatLng _center = Config.get.initialCenter;
  late Marker _marker;

  @override
  void initState() {
    _changeMarker(_center);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FormContainer(
      step: step,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          // AppSpacerV(value: Dimens.space20),
          // Row(
          //   children: [
          //     Expanded(
          //       child: Text(step.title,
          //           textAlign: TextAlign.center,
          //           style: Theme.of(context)
          //               .textTheme
          //               .bodyLarge!
          //               .copyWith(fontSize: Dimens.headerLarge)),
          //     ),
          //   ],
          // ),
          // if (step.description?.isNotEmpty == true)
          //   Row(
          //     children: [
          //       Expanded(
          //         child: Padding(
          //           padding: EdgeInsets.only(
          //             top: Dimens.space12,
          //           ),
          //           child: Text(step.description!,
          //               textAlign: TextAlign.center,
          //               style: Theme.of(context).textTheme.labelLarge),
          //         ),
          //       ),
          //     ],
          //   ),
          // AppSpacerV(
          //   value: Dimens.space20,
          // ),
          Expanded(
            child: Stack(
              children: [
                KakaoMap(
                  center: Config.get.initialCenter,
                  onMapCreated: ((controller) async {
                    _controller = controller;

                    setState(() {});
                  }),
                  onDragChangeCallback:
                      (LatLng latLng, int zoomLevel, DragType dragType) {
                    _marker.latLng = latLng;
                    setState(() {});
                  },
                ),
                ///////////////////////////////////
                // MARKER
                ///////////////////////////////////
                Positioned(
                  left: 0,
                  top: 0,
                  right: 0,
                  bottom: 0,
                  child: Center(
                    child: InkWell(
                      splashColor: Colors.transparent,
                      onTap: () async {},
                      child: Image.asset(
                        Images.markerGif,
                        width: Dimens.space40,
                        height: Dimens.space40,
                      ),
                    ),
                  ),
                ),
                ///////////////////////////////////
                // MY POSITION
                ///////////////////////////////////
                Positioned(
                    right: Dimens.space20,
                    bottom: Dimens.bottomBarHeight(context) + Dimens.space24,
                    child: InkWell(
                      splashColor: Colors.transparent,
                      onTap: () async {
                        final Position position =
                            await _geolocatorService.getPosition();
                        LatLng myPosition =
                            LatLng(position.latitude, position.longitude);
                        _controller.panTo(myPosition);
                        _changeMarker(myPosition);
                      },
                      child: Container(
                        width: Dimens.space40,
                        height: Dimens.space40,
                        padding: EdgeInsets.all(Dimens.space8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(Dimens.space12),
                          border: Border.all(
                              width: Dimens.space1,
                              color: const Color(0xFFD3D7DF)),
                          // gap: const EdgeInsets.all(10),
                          color: Palette.white,
                        ),
                        child: SvgPicture.asset(
                          Images.currentPosition,
                          width: Dimens.space24,
                          height: Dimens.space24,
                        ),
                      ),
                    )),
              ],
            ),
          ),
          ///////////////////////////////////
          // BUTTON
          ///////////////////////////////////
          AppSpacerV(value: Dimens.space20),
          FormButton(
            onNextPress: widget.onNextPress,
            // onBackPress: widget.onBackPress,
            result: StepResult(stepId: step.id, value: _marker.latLng),
          ),
        ],
      ),
    );
  }

  void _changeMarker(LatLng loc) {
    _marker = Marker(
      markerId: UniqueKey().toString(),
      draggable: true,
      latLng: loc,
    );
    setState(() {});
  }
}
