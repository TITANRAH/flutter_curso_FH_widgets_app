import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

// un simple booleano
final isDarkModeProvider = StateProvider((ref) => true);

// listado de colores inmutables provider es para eso
final colorListProvider = Provider((ref) => colorList);

// un simple int
final selectedColorProvider = StateProvider((ref) => 0);





// Un objeto de tipo Aptheme ( custom) para estados elavorados
// este provider entregara los estados que se manejan en la clase themenotifier
// con todos sus metodos dentro
final themeNotifierProvider = StateNotifierProvider<ThemeNotifier, AppTheme>(
  (ref) => ThemeNotifier(),
);

// cntroller o notifier
class ThemeNotifier extends StateNotifier<AppTheme> {
  // creando una instancia de la clase apptheme

  // STATE = ESTADO = NEW APPTHEME()
  ThemeNotifier() : super(AppTheme());

  void toogleDarkMode() {
    state = state.copyWhit(isDarkMode: !state.isDarkMode);
  }

  void changeColorIndex(int colorIndex) {
    state = state.copyWhit(selectedColor: colorIndex);
  }
}
