// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'route.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetRouteParamsImpl _$$GetRouteParamsImplFromJson(Map<String, dynamic> json) =>
    _$GetRouteParamsImpl(
      sName: json['sName'] as String,
      sX: (json['sX'] as num).toDouble(),
      sY: (json['sY'] as num).toDouble(),
      eName: json['eName'] as String,
      eX: (json['eX'] as num).toDouble(),
      eY: (json['eY'] as num).toDouble(),
      ids: json['ids'] as String,
    );

Map<String, dynamic> _$$GetRouteParamsImplToJson(
        _$GetRouteParamsImpl instance) =>
    <String, dynamic>{
      'sName': instance.sName,
      'sX': instance.sX,
      'sY': instance.sY,
      'eName': instance.eName,
      'eX': instance.eX,
      'eY': instance.eY,
      'ids': instance.ids,
    };

_$GetRouteFormatResponseImpl _$$GetRouteFormatResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$GetRouteFormatResponseImpl(
      time: json['time'] as int,
      points: (json['points'] as List<dynamic>)
          .map((e) => Document.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GetRouteFormatResponseImplToJson(
        _$GetRouteFormatResponseImpl instance) =>
    <String, dynamic>{
      'time': instance.time,
      'points': instance.points,
    };

_$GetRouteResponseImpl _$$GetRouteResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$GetRouteResponseImpl(
      directions: (json['directions'] as List<dynamic>)
          .map((e) => Direction.fromJson(e as Map<String, dynamic>))
          .toList(),
      bound: Bound.fromJson(json['bound'] as Map<String, dynamic>),
      resultCode: json['resultCode'] as String,
    );

Map<String, dynamic> _$$GetRouteResponseImplToJson(
        _$GetRouteResponseImpl instance) =>
    <String, dynamic>{
      'directions': instance.directions,
      'bound': instance.bound,
      'resultCode': instance.resultCode,
    };

_$BoundImpl _$$BoundImplFromJson(Map<String, dynamic> json) => _$BoundImpl(
      top: json['top'] as int,
      left: json['left'] as int,
      bottom: json['bottom'] as int,
      right: json['right'] as int,
    );

Map<String, dynamic> _$$BoundImplToJson(_$BoundImpl instance) =>
    <String, dynamic>{
      'top': instance.top,
      'left': instance.left,
      'bottom': instance.bottom,
      'right': instance.right,
    };

_$DirectionImpl _$$DirectionImplFromJson(Map<String, dynamic> json) =>
    _$DirectionImpl(
      routeMode: json['routeMode'] as String,
      bound: Bound.fromJson(json['bound'] as Map<String, dynamic>),
      resultCode: json['resultCode'] as String,
      length: json['length'] as int,
      time: json['time'] as int,
      sections: (json['sections'] as List<dynamic>)
          .map((e) => Section.fromJson(e as Map<String, dynamic>))
          .toList(),
      groupInfoMap:
          GroupInfoMap.fromJson(json['groupInfoMap'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DirectionImplToJson(_$DirectionImpl instance) =>
    <String, dynamic>{
      'routeMode': instance.routeMode,
      'bound': instance.bound,
      'resultCode': instance.resultCode,
      'length': instance.length,
      'time': instance.time,
      'sections': instance.sections,
      'groupInfoMap': instance.groupInfoMap,
    };

_$GroupInfoMapImpl _$$GroupInfoMapImplFromJson(Map<String, dynamic> json) =>
    _$GroupInfoMapImpl();

Map<String, dynamic> _$$GroupInfoMapImplToJson(_$GroupInfoMapImpl instance) =>
    <String, dynamic>{};

_$SectionImpl _$$SectionImplFromJson(Map<String, dynamic> json) =>
    _$SectionImpl(
      guideList: (json['guideList'] as List<dynamic>)
          .map((e) => GuideList.fromJson(e as Map<String, dynamic>))
          .toList(),
      resultCode: json['resultCode'] as String,
      length: json['length'] as int,
      calories: json['calories'] as String,
      time: json['time'] as int,
      facilities:
          Facilities.fromJson(json['facilities'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SectionImplToJson(_$SectionImpl instance) =>
    <String, dynamic>{
      'guideList': instance.guideList,
      'resultCode': instance.resultCode,
      'length': instance.length,
      'calories': instance.calories,
      'time': instance.time,
      'facilities': instance.facilities,
    };

_$FacilitiesImpl _$$FacilitiesImplFromJson(Map<String, dynamic> json) =>
    _$FacilitiesImpl(
      stair: json['stair'] as int,
      underground: json['underground'] as int,
      bridge: json['bridge'] as int,
    );

Map<String, dynamic> _$$FacilitiesImplToJson(_$FacilitiesImpl instance) =>
    <String, dynamic>{
      'stair': instance.stair,
      'underground': instance.underground,
      'bridge': instance.bridge,
    };

_$GuideListImpl _$$GuideListImplFromJson(Map<String, dynamic> json) =>
    _$GuideListImpl(
      rotationCode: $enumDecode(_$RotationCodeEnumMap, json['rotationCode']),
      guideMent: json['guideMent'] as String,
      groupId: json['groupId'] as String,
      x: json['x'] as int,
      link: json['link'] == null
          ? null
          : Link.fromJson(json['link'] as Map<String, dynamic>),
      y: json['y'] as int,
      guideCode: $enumDecode(_$GuideCodeEnumMap, json['guideCode']),
      seq: json['seq'] as int,
      roadView: json['roadView'] == null
          ? null
          : RoadView.fromJson(json['roadView'] as Map<String, dynamic>),
      poi: json['poi'] == null
          ? null
          : Poi.fromJson(json['poi'] as Map<String, dynamic>),
      crossName: json['crossName'] as String?,
    );

Map<String, dynamic> _$$GuideListImplToJson(_$GuideListImpl instance) =>
    <String, dynamic>{
      'rotationCode': _$RotationCodeEnumMap[instance.rotationCode]!,
      'guideMent': instance.guideMent,
      'groupId': instance.groupId,
      'x': instance.x,
      'link': instance.link,
      'y': instance.y,
      'guideCode': _$GuideCodeEnumMap[instance.guideCode]!,
      'seq': instance.seq,
      'roadView': instance.roadView,
      'poi': instance.poi,
      'crossName': instance.crossName,
    };

const _$RotationCodeEnumMap = {
  RotationCode.STRAIGHT: 'STRAIGHT',
  RotationCode.TURN_LEFT: 'TURN_LEFT',
  RotationCode.TURN_RIGHT: 'TURN_RIGHT',
};

const _$GuideCodeEnumMap = {
  GuideCode.END: 'END',
  GuideCode.ENTER_CROSSWALK: 'ENTER_CROSSWALK',
  GuideCode.ENTER_DOUBLE_CROSSWALK: 'ENTER_DOUBLE_CROSSWALK',
  GuideCode.EXIT_CROSSWALK: 'EXIT_CROSSWALK',
  GuideCode.NONE: 'NONE',
  GuideCode.START: 'START',
  GuideCode.TURN_CROSSROAD: 'TURN_CROSSROAD',
};

_$LinkImpl _$$LinkImplFromJson(Map<String, dynamic> json) => _$LinkImpl(
      existCenterLine: json['existCenterLine'] as bool,
      length: json['length'] as int,
      time: json['time'] as int,
      points: json['points'] as String,
      roadName: json['roadName'] as String?,
    );

Map<String, dynamic> _$$LinkImplToJson(_$LinkImpl instance) =>
    <String, dynamic>{
      'existCenterLine': instance.existCenterLine,
      'length': instance.length,
      'time': instance.time,
      'points': instance.points,
      'roadName': instance.roadName,
    };

_$PoiImpl _$$PoiImplFromJson(Map<String, dynamic> json) => _$PoiImpl(
      x: (json['x'] as num).toDouble(),
      confirmId: json['confirmId'] as String,
      y: (json['y'] as num).toDouble(),
      placeName: json['placeName'] as String,
    );

Map<String, dynamic> _$$PoiImplToJson(_$PoiImpl instance) => <String, dynamic>{
      'x': instance.x,
      'confirmId': instance.confirmId,
      'y': instance.y,
      'placeName': instance.placeName,
    };

_$RoadViewImpl _$$RoadViewImplFromJson(Map<String, dynamic> json) =>
    _$RoadViewImpl(
      filename: json['filename'] as String,
      panoid: json['panoid'] as int,
      x: json['x'] as int,
      y: json['y'] as int,
      pan: json['pan'] as int,
    );

Map<String, dynamic> _$$RoadViewImplToJson(_$RoadViewImpl instance) =>
    <String, dynamic>{
      'filename': instance.filename,
      'panoid': instance.panoid,
      'x': instance.x,
      'y': instance.y,
      'pan': instance.pan,
    };
