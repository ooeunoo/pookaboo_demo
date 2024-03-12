enum ToiletType {
  building,
  cafe;
}

enum ToiletFilter {
  time("time"),
  gender("gender"),
  password("password"),
  ;

  const ToiletFilter(this.key);

  final String key;
}

enum Week {
  mon('mon', '월요일'),
  tue('tue', '화요일'),
  wed('wed', '수요일'),
  thu('thu', '목요일'),
  fri('fri', '금요일'),
  sat('sat', '토요일'),
  sun('sun', '일요일'),
  ;

  const Week(this.key, this.ko);

  final String key;
  final String ko;
}

enum ScoreType {
  cleanliness('cleanliness', '청결도', '🧹'),
  convenience('convenience', '편의성', '🎛️'),
  management('management', '관리도', '🫧'),
  safety('safety', '안전성', '🚨');

  const ScoreType(this.key, this.name, this.emoji);

  final String key;
  final String name;
  final String emoji;
}

enum EquipmentOrder { common, male, female }

enum EquipmentKey {
  urinal(['urinal', 'child_urinal', 'disable_urinal'], '소변기', '💦'),
  seat(['seat', 'child_seat', 'disable_seat'], '좌변기', '🚽'),
  washbasin(['washbasin'], '음수대', '🚰');

  const EquipmentKey(this.keys, this.name, this.emoji);

  final List<String> keys;
  final String name;
  final String emoji;
}

enum ConvenienceKey {
  power_room('powder_room', '파우더 룸', '🪞'),
  hand_dry('hand_dry', '핸드 드라이', '💨'),
  bell('bell', '비상벨', '🚨'),
  vending('vending', '편의 자판기', '🎛️'),
  diaper('diaper', '기저귀 교환대', '👶'),
  ;

  const ConvenienceKey(this.key, this.name, this.emoji);

  final String key;
  final String name;
  final String emoji;
}

enum AmenityKey {
  paper('paper', '화장실 휴지', '🧻'),
  soap('soap', '비누', '🧼'),
  towel('towel', '핸드 타올', '🧻');

  const AmenityKey(this.key, this.name, this.emoji);

  final String key;
  final String name;
  final String emoji;
}

enum Gender {
  male(),
  female(),
}

enum Coord {
  wgs84('WGS84'),
  wcongnamul('WCONGNAMUL'),
  ;

  const Coord(this.key);

  final String key;
}
