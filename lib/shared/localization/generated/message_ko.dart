import 'message.dart';

/// The translations for Korean (`ko`).
class MessagesKo extends Messages {
  MessagesKo([String locale = 'ko']) : super(locale);

  @override
  String get startWithKakao => '카카오로 시작하기';

  @override
  String get myPage => '마이페이지';

  @override
  String get recommendSignIn => '로그인 또는 회원가입 후 \n자세한 화장실 정보를 받아 보세요';

  @override
  String get toiletFilterTime => '현재운영';

  @override
  String get toiletFilterGender => '남녀분리';

  @override
  String get toiletFilterPassword => '개방';

  @override
  String get dashboard => '대시보드';

  @override
  String get about => '정보 보기';

  @override
  String get selectDate => '선택 날짜';

  @override
  String get selectTime => '선택 시간';

  @override
  String get select => '선택';

  @override
  String get cancel => '취소';

  @override
  String get pleaseWait => '잠시만 기다려주세요...';

  @override
  String get login => '로그인';

  @override
  String get email => '이메일';

  @override
  String get password => '비밀번호';

  @override
  String get register => 'Daftar';

  @override
  String get askRegister => 'Belum punya akun?';

  @override
  String get errorInvalidEmail => 'Email tidak valid';

  @override
  String get errorEmptyField => 'Tidak boleh kosong';

  @override
  String get errorPasswordLength => 'Kata Sandi minimal 6 karakter';

  @override
  String get passwordRepeat => 'Ulangi Kata Sandi';

  @override
  String get errorPasswordNotMatch => 'Kata Sandi tidak sama';

  @override
  String get settings => 'Pengaturan';

  @override
  String get themeLight => 'Tema Terang';

  @override
  String get themeDark => 'Tema Gelap';

  @override
  String get themeSystem => 'Tema Sistem';

  @override
  String get chooseTheme => 'Pilih tema';

  @override
  String get chooseLanguage => 'Pilih bahasa';

  @override
  String get errorNoData => 'Data Kosong';

  @override
  String get logout => 'Keluar';

  @override
  String get logoutDesc => 'Apakah anda ingin keluar dari aplikasi?';

  @override
  String get yes => 'Ya';
}
