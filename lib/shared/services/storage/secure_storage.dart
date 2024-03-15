import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

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

class SecureStorage extends LocalStorage {
  final storage = const FlutterSecureStorage(
      aOptions: AndroidOptions(
    encryptedSharedPreferences: true,
  ));

  @override
  Future<void> initialize() async {}

  @override
  Future<String?> accessToken() async {
    return storage.read(key: supabasePersistSessionKey);
  }

  @override
  Future<bool> hasAccessToken() async {
    return storage.containsKey(key: supabasePersistSessionKey);
  }

  @override
  Future<void> persistSession(String persistSessionString) async {
    return storage.write(
        key: supabasePersistSessionKey, value: persistSessionString);
  }

  @override
  Future<void> removePersistedSession() async {
    return storage.delete(key: supabasePersistSessionKey);
  }

  Future<void> write<T>(StorageKeys key, String value) async {
    await storage.write(key: key.name, value: value);
  }

  Future<void> delete(StorageKeys key) async {
    await storage.delete(key: key.name);
  }

  Future<T> get<T>(StorageKeys key) async {
    return storage.read(key: key.name) as T;
  }

  // Future<void> logoutInStorage() async {
  //   /// Clear the box
  //   removeDataInStorage(StorageKeys.isLogin);
  //   removeDataInStorage(StorageKeys.token);
  // }
}
