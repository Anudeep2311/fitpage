import 'package:shared_preferences/shared_preferences.dart';

class PreferencesService {
  Future<void> saveVariable(String key, dynamic value) async {
    final prefs = await SharedPreferences.getInstance();
    if (value is int) {
      await prefs.setInt(key, value);
    } else if (value is double) {
      await prefs.setDouble(key, value);
    } else if (value is String) {
      await prefs.setString(key, value);
    } else if (value is List<int>) {
      await prefs.setStringList(key, value.map((e) => e.toString()).toList());
    } else if (value is List<double>) {
      await prefs.setStringList(key, value.map((e) => e.toString()).toList());
    }
  }

  dynamic loadVariable(String key) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.get(key);
  }
}
