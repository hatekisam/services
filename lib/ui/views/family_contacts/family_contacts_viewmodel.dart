import 'package:socialservices/app/app.locator.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class FamilyContactsViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  void goBack() {
    _navigationService.back();
  }
}
