import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

class LanguageCubit extends Cubit<Locale> {
  LanguageCubit() : super(const Locale('uz'));

  void changeLanguage(String languageCode) {
    emit(Locale(languageCode));
  }
}
