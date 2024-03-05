import 'package:flutter/material.dart';
import 'package:kakao_map_plugin/kakao_map_plugin.dart';

class MapPage extends StatelessWidget {
  MapPage({super.key});

  Set<Marker> markers = {}; // 마커 변수

  late KakaoMapController mapController;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: KakaoMap(
        onMapTap: (latLng) {
          print(latLng);
        },
        onMapCreated: (con) {
          print('created');
        },
      ),
    );
  }
}
