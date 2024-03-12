import 'package:hive_flutter/hive_flutter.dart';

// enum ActiveTheme {
//   light(ThemeMode.light),
//   dark(ThemeMode.dark),
//   system(ThemeMode.system);

//   final ThemeMode mode;

//   const ActiveTheme(this.mode);
// }

enum StorageKeys { token, fcm, language, theme, locale, isLogin, isInitial }

class StorageService {
  static late Box? mainBox;
  static const _boxName = 'pookaboo';

  static Future<void> init() async {
    await Hive.initFlutter();
    mainBox = await Hive.openBox(_boxName);
  }

  Future<void> addData<T>(StorageKeys key, T value) async {
    await mainBox?.put(key.name, value);
  }

  Future<void> removeData(StorageKeys key) async {
    await mainBox?.delete(key.name);
  }

  T getData<T>(StorageKeys key) => mainBox?.get(key.name) as T;
}
