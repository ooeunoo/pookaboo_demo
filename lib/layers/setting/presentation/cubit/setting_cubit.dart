import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:pookaboo/shared/services/hive/main_box.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pookaboo/shared/services/hive/main_box.dart';

part 'setting_state.dart';
part 'setting_cubit.freezed.dart';

class SettingsCubit extends Cubit<SettingState> with MainBoxMixin {
  SettingsCubit() : super(SettingState(type: "ko"));

  void updateTheme(ActiveTheme activeTheme) {
    addData(MainBoxKeys.theme, activeTheme.name);
    emit(
      SettingState(
        activeTheme: activeTheme,
        type: getData(MainBoxKeys.locale) ?? "ko",
      ),
    );
  }

  void updateLanguage(String type) {
    /// Update locale code
    addData(MainBoxKeys.locale, type);
    emit(SettingState(type: type, activeTheme: getActiveTheme()));
  }

  ActiveTheme getActiveTheme() {
    final activeTheme = ActiveTheme.values.singleWhere(
      (element) =>
          element.name ==
          (getData(MainBoxKeys.theme) ?? ActiveTheme.system.name),
    );
    emit(
      SettingState(
        activeTheme: activeTheme,
        type: getData(MainBoxKeys.locale) ?? "ko",
      ),
    );
    return activeTheme;
  }
}
