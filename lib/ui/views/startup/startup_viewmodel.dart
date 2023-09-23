import 'package:socialservices/services/authentication_service.dart';
import 'package:stacked/stacked.dart';
import 'package:socialservices/app/app.locator.dart';
import 'package:socialservices/app/app.router.dart';
import 'package:stacked_services/stacked_services.dart';

class StartupViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final _authenticationService = locator<AuthenticationService>();

  // Place anything here that needs to happen before we get into the application
  Future runStartupLogic() async {
    // bool loggedIn = await _authenticationService.userLoggedIn();
    bool loggedIn = true;
    if (loggedIn) {
      _navigationService.replaceWith(Routes.homeView);
    } else {
      _navigationService.replaceWith(Routes.loginView);
    }
  }
}
