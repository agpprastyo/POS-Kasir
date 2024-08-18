import 'package:flutter_bloc/flutter_bloc.dart';

bool isDarkMode = false;

class ThemeModeCubit extends Cubit<bool> {
  ThemeModeCubit() : super(isDarkMode);

  void toggleTheme() {
    isDarkMode = !isDarkMode;
    emit(isDarkMode);
  }
}
