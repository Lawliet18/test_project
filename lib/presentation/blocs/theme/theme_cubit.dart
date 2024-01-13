import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:test_app/core/theme/app_theme.dart';
import 'package:test_app/domain/data/app_data.dart';

class ThemeCubit extends Cubit<ThemeMode> {
  static final AppData _appData = GetIt.instance.get();

  ThemeCubit() : super(AppTheme.getThemeMode(_appData.themeMode));

  void setTheme(ThemeMode mode) {
    emit(mode);
  }
}
