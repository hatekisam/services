import 'package:socialservices/app/app.bottomsheets.dart';
import 'package:socialservices/app/app.dialogs.dart';
import 'package:socialservices/app/app.locator.dart';
import 'package:socialservices/app/app.router.dart';
import 'package:socialservices/ui/common/app_strings.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class ProfileViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final _dialogService = locator<DialogService>();
  final _bottomSheetService = locator<BottomSheetService>();

  void showDialog() {
    _dialogService.showCustomDialog(
      variant: DialogType.infoAlert,
      title: 'Stacked Rocks!',
      description: 'Give stacked  stars on Github',
    );
  }

  void showBottomSheet() {
    _bottomSheetService.showCustomSheet(
      variant: BottomSheetType.logout,
      title: ksHomeBottomSheetTitle,
      description: ksHomeBottomSheetDescription,
    );
  }

  void goBack() {
    _navigationService.back();
  }

  void goToYourAccount() {
    _navigationService.navigateToYourAccountView();
  }

  void goToYourOrders() {
    _navigationService.navigateToYourOrdersView();
  }

  void goToBecomeProvider() {
    _navigationService.navigateToBecomeProviderView();
  }

  void goToSettings() {
    _navigationService.navigateToSettingsView();
  }

  void goToBalancePayment() {
    _navigationService.navigateToBalancePaymentView();
  }

  void goToPrivacyPolicy() {
    _navigationService.navigateToPrivacyPolicyView();
  }

  void goToHelp() {
    _navigationService.navigateToHelpView();
  }
}
