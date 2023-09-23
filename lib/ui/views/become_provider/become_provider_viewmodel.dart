import 'package:socialservices/app/app.locator.dart';
import 'package:socialservices/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class BecomeProviderViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  void goBack() {
    _navigationService.back();
  }

  int tab = 1;
  String body = "You have not yet requested to get a service provider profile";
  String btn = "Request Profile";
  void requestProfile() {
    if (tab == 1) {
      body = "You have not yet created a service provider profile";
      btn = "Set Profile";
      tab = 2;
      rebuildUi();
    } else {
      _navigationService.navigateToSetProfileView();
    }
  }
}
