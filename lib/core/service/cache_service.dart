import 'package:shared_preferences/shared_preferences.dart';

class CacheService {
  CacheService._();

  static SharedPreferences? preferences;

  static Future<void> init() async {
    preferences = await SharedPreferences.getInstance();
  }

  static Future<bool> clear() async {
    return await preferences!.clear();
  }

  // ...
}
