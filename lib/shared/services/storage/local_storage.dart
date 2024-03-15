import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

enum ActiveTheme {
  light(ThemeMode.light),
  dark(ThemeMode.dark),
  system(ThemeMode.system);

  final ThemeMode mode;

  const ActiveTheme(this.mode);
}

enum StorageKeys {
  token,
  language,
  theme,
  locale,
  isLogin,
  isUpdateUserMetadata
}

mixin class AppLocalStorage {
  static late Box? mainBox;
  static const _boxName = 'pookaboo';

  static Future<void> init() async {
    await Hive.initFlutter();
    mainBox = await Hive.openBox(_boxName);
  }

  Future<void> addDataInStorage<T>(StorageKeys key, T value) async {
    await mainBox?.put(key.name, value);
  }

  Future<void> removeDataInStorage(StorageKeys key) async {
    await mainBox?.delete(key.name);
  }

  T getDataInStorage<T>(StorageKeys key) => mainBox?.get(key.name) as T;

  Future<void> logoutInStorage() async {
    /// Clear the box
    removeDataInStorage(StorageKeys.isLogin);
    removeDataInStorage(StorageKeys.token);
  }

  Future<void> closeBox() async {
    try {
      if (mainBox != null) {
        await mainBox?.close();
        await mainBox?.deleteFromDisk();
      }
    } catch (e, stackTrace) {
      // FirebaseCrashLogger().nonFatalError(error: e, stackTrace: stackTrace);
    }
  }
}
