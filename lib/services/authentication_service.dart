import 'package:shared_preferences/shared_preferences.dart';

class AuthenticationService {
  Future<bool> userLoggedIn() async {
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();
    String? email = sharedPreferences.getString("email");

    if (email != null) {
      return true;
    } else {
      return false;
    }
  }
}
