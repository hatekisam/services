import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:socialservices/app/app.locator.dart';
import 'package:socialservices/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:stacked_services/stacked_services.dart';

class LoginViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final passwordController = TextEditingController();
  final emailController = TextEditingController();
  bool remember = false;
  bool showP = true;

  String? validateEmail(value) {
    if (!RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$').hasMatch(value)) {
      return 'Please provide a valid email';
    }
    if (value == null || value.isEmpty) {
      return "Email is required";
    }
    return null;
  }

  String? validatePassword(value) {
    if (value == null || value.isEmpty) {
      return 'Password is required';
    }
    if (value < 8) {
      return 'Password must be at least 8 characters long';
    }
    return null;
  }

  void goToDashboard(String email, String username, String id) async {
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();
    sharedPreferences.setString("email", email);
    sharedPreferences.setString("user", username);
    sharedPreferences.setString("id", id);
    _navigationService.replaceWithHomeView();
  }

  void showSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  String loginMutation() {
    return '''
    mutation CreateUser(\$username: String!, \$password: String) {
      createUser(input: {
        username: \$username
        password: \$password
      }) {
        tokens {
      accessToken
      accessTokenExpiration
      refreshToken
    }
    user {
      username
      id
      email
      verified
      admin
      numberOfNotifications
      createdAt
      updatedAt
    }
      }
    }
  ''';
  }

  void login(RunMutation runMutation) {
    final email = emailController.text;
    final password = passwordController.text;

    runMutation({
      'username': email,
      'password': password,
    });
  }

  void submit() {
    print("Password : " + passwordController.text);
    print("Email : " + emailController.text);
  }

  void toggleShow() {
    showP = !showP;
    rebuildUi();
  }

  void goToSignup() {
    _navigationService.replaceWithSignupView();
  }

  void goToForgot() {
    _navigationService.navigateToForgotPasswordView();
  }

  void rememberMe(bool? value) {
    if (value != null) {
      remember = value;
      rebuildUi();
    }
  }

  void goToCheckFingerprint() {}
}
