import 'package:socialservices/app/app.locator.dart';
import 'package:socialservices/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class YourAccountViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  void goBack() {
    _navigationService.back();
  }

  void goToFamily() {
    _navigationService.navigateToFamilyContactsView();
  }

  void goUpdate() {
    _navigationService.navigateToUpdateProfileView();
  }
}
