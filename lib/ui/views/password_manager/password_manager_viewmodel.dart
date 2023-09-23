import 'package:socialservices/app/app.locator.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class PasswordManagerViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  bool showP = true;
  void goBack() {
    _navigationService.back();
  }

  void toggleShow() {
    showP = !showP;
    rebuildUi();
  }
}
