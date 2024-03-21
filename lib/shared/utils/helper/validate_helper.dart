String? isValidNickname(String? nickname) {
  if (nickname != null) {
    if (nickname.isEmpty) {
      return '최소 3자리 이상 입력해주세요.';
    } else if (nickname.length < 3) {
      return '최소 3자리 이상 입력해주세요.';
    } else if (nickname.length > 10) {
      return '프로필명은 10자리를 넘을 수 없어요.';
    } else if (!RegExp(r'^[ㄱ-ㅎㅏ-ㅣ가-힣a-zA-Z0-9]+$').hasMatch(nickname)) {
      return '한글, 영문, 숫자만 사용할 수 있어요.';
    } else {
      for (int i = 0; i < nickname.length; i++) {
        String char = nickname[i];
        if (RegExp(r'^[ㄱ-ㅎㅏ-ㅣ]+$').hasMatch(char)) {
          return '유효하지않은 단어가 포함되어있어요.';
        }
      }
    }
    return null;
  }
  return null;
}

String? isValidAge(String? age) {
  if (age != null) {
    if (age == "" || !(0 < int.parse(age) && int.parse(age) <= 100)) {
      return '유효한 나이를 입력해주세요.';
    }
  }

  return null;
}
