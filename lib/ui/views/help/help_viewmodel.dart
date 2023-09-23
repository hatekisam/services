import 'package:socialservices/app/app.locator.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class HelpViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  void goBack() {
    _navigationService.back();
  }

  int activeTab = 1;
  void toContacts() {
    activeTab = 2;
    rebuildUi();
  }

  void toFaqs() {
    activeTab = 1;
    rebuildUi();
  }

  List<String> categories = [
    "All",
    "Account",
    "Services",
    "Security",
    "General",
    "afsdfasd",
    "fasdfasdf",
    "fsdfasdfas",
    "fasdfasdf"
  ];
  int selectedCategoryIndex = 0;
  void setSelectedCategory(int i) {
    selectedCategoryIndex = i;
    rebuildUi();
  }
}
