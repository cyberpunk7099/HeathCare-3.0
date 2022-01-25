import 'package:shared_preferences/shared_preferences.dart';

class UserSimplePreferences{
      static SharedPreferences? _preferences;
      static const _keyUsername = "username";
      static const _keyEmail = "emailadd";

      static Future init() async =>

             _preferences = await SharedPreferences.getInstance() as SharedPreferences;





      static Future setUsername(String username) async =>
          await _preferences?.setString(_keyUsername, username);

      static String? getUsername() => _preferences?.getString(_keyUsername);


      static Future setEmail(String emailadd) async =>
          await _preferences?.setString(_keyEmail, emailadd);

      static String? getEmail() => _preferences?.getString(_keyEmail);


}