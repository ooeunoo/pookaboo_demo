part of 'setting_cubit.dart';

@unfreezed
class SettingState with _$SettingState {
  factory SettingState({
    String? title,
    String? desc,
    String? iconPath,
    IconData? icon,
    String? url,
    String? type,
    int? id,
    @Default(false) bool isSelected,
    @Default(ActiveTheme.light) ActiveTheme activeTheme,
  }) = _SettingState;
}
