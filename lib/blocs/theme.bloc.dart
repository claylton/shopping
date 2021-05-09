import 'package:flutter/widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shopping/settings/settings.dart';
import 'package:shopping/themes/dark-yellow.theme.dart';
import 'package:shopping/themes/dark.theme.dart';
import 'package:shopping/themes/light.theme.dart';

class ThemeBloc extends ChangeNotifier {
  var theme = lightTheme();

  ThemeBloc() {
    load();
  }

  change(String color) {
    switch (color) {
      case 'blue-white':
        {
          theme = lightTheme();
          Settings.theme = "blue-white";
          notifyListeners();
          break;
        }

      case 'light':
        {
          theme = lightTheme();
          Settings.theme = "light";
          notifyListeners();
          break;
        }

      case 'dark':
        {
          theme = darkTheme();
          Settings.theme = "dark";
          notifyListeners();
          break;
        }

      case 'dark-yellow':
        {
          theme = darkYellowTheme();
          Settings.theme = "dark-yellow";
          notifyListeners();
          break;
        }
      default:
        {
          theme = lightTheme();
          Settings.theme = "blue-white";
          notifyListeners();
          break;
        }
    }
  }

  Future load() async {
    var prefs = await SharedPreferences.getInstance();
    var theme = prefs.getString('theme');
    Settings.theme = theme.isEmpty ? 'light-white' : theme;
    change(Settings.theme);
  }
}
