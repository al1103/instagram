import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesManager {
  SharedPreferencesManager._();

  static final SharedPreferencesManager instance = SharedPreferencesManager._();

  late SharedPreferences pref;

  Future<void> init() async {
    pref = await SharedPreferences.getInstance();
  }

  Future<bool?>? putString(String key, String value) =>
      pref.setString(key, value);

  String? getString(String key) => pref.getString(key);

  Future<bool?>? putInt(String key, int value) => pref.setInt(key, value);

  Future<bool?>? putBool(String key, {required bool value}) =>
      pref.setBool(key, value);

  bool? getBool(String key) => pref.getBool(key);

  int? getInt(String key) => pref.getInt(key);

  Future<bool> remove(String key) => pref.remove(key);

  Future<bool?>? putStringList(String key, List<String> value) =>
      pref.setStringList(key, value);

  List<String>? getStringList(String key) => pref.getStringList(key);
}
