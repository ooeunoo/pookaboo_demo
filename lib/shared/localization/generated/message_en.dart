import 'message.dart';

/// The translations for English (`en`).
class MessagesEn extends Messages {
  MessagesEn([super.locale = 'en']);

  @override
  String get startWithKakao => 'Start With Kakao';

  @override
  String get myPage => 'MyPage';

  @override
  String get recommendLogIn =>
      'After logging in or signing up, you can receive detailed bathroom information';

  @override
  String get toiletFilterTime => 'time';

  @override
  String get toiletFilterGender => 'gender';

  @override
  String get toiletFilterPassword => 'password';

  @override
  String get dashboard => 'Dashboard';

  @override
  String get about => 'About';

  @override
  String get selectDate => 'Choose Date';

  @override
  String get selectTime => 'Choose Time';

  @override
  String get select => 'Select';

  @override
  String get cancel => 'Cancel';

  @override
  String get pleaseWait => 'Please Wait...';

  @override
  String get login => 'Login';

  @override
  String get email => 'Email';

  @override
  String get password => 'Password';

  @override
  String get register => 'Register';

  @override
  String get askRegister => 'Don\'t have an Account?';

  @override
  String get errorInvalidEmail => 'Email is not valid';

  @override
  String get errorEmptyField => 'Can\'t be empty';

  @override
  String get errorPasswordLength => 'Password must be at least 6 characters';

  @override
  String get passwordRepeat => 'Repeat Password';

  @override
  String get errorPasswordNotMatch => 'Password doesn\'t match';

  @override
  String get settings => 'Settings';

  @override
  String get themeLight => 'Theme Light';

  @override
  String get themeDark => 'Theme Dark';

  @override
  String get themeSystem => 'Theme System';

  @override
  String get chooseTheme => 'Choose Theme';

  @override
  String get chooseLanguage => 'Choose Language';

  @override
  String get errorNoData => 'No data';

  @override
  String get logout => 'Logout';

  @override
  String get logoutDesc => 'Do you want to logout from the app?';

  @override
  String get yes => 'Yes';
}
