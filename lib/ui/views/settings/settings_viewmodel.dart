import 'package:socialservices/app/app.bottomsheets.dart';
import 'package:socialservices/app/app.locator.dart';
import 'package:socialservices/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class SettingsViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final _bottomSheetService = locator<BottomSheetService>();
  bool notifications = true;


  void showBottomSheet() {
    _bottomSheetService.showCustomSheet(
      variant: BottomSheetType.deleteAccount,
      title: "fasd",
      description: "fasdfa",
    );
  }

  void toggleNotifications(bool value) {
    if (notifications == false) {
      notifications = true;
      rebuildUi();
      print('Switch Button is ON');
    } else {
      notifications = false;
      rebuildUi();
      print('Switch Button is OFF');
    }
  }

  void goBack() {
    _navigationService.back();
  }

  void goToPasswordManager() {
    _navigationService.navigateToPasswordManagerView();
  }
}
