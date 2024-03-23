import 'package:kakao_map_plugin/kakao_map_plugin.dart';

class CustomMarker {
  /// custom overlay unique id
  final String id;

  /// custom overlay center latitude, longitude
  final LatLng latLng;

  /// custom overlay inner content
  final String content;

  /// custom overlay clickable
  final bool isClickable;

  /// custom overlay x anchor
  final double xAnchor;

  /// custom overlay y anchor
  final double yAnchor;

  /// custom overlay zIndex
  final int zIndex;

  CustomMarker({
    required this.id,
    required this.latLng,
    required this.content,
    this.isClickable = true,
    this.xAnchor = 0.5,
    this.yAnchor = 1,
    this.zIndex = 3,
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'latLng': {
        'latitude': latLng.latitude,
        'longitude': latLng.longitude,
      },
      'content': content,
      'isClickable': isClickable,
      'xAnchor': xAnchor,
      'yAnchor': yAnchor,
      'zIndex': zIndex,
    };
  }
}
