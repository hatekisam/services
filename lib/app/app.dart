import 'package:socialservices/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:socialservices/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:socialservices/ui/views/home/home_view.dart';
import 'package:socialservices/ui/views/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:socialservices/ui/views/login/login_view.dart';
import 'package:socialservices/ui/views/signup/signup_view.dart';
import 'package:socialservices/ui/views/forgot_password/forgot_password_view.dart';
import 'package:socialservices/ui/views/services/services_view.dart';
import 'package:socialservices/ui/views/notifications/notifications_view.dart';
import 'package:socialservices/ui/views/profile/profile_view.dart';
import 'package:socialservices/services/authentication_service.dart';
import 'package:socialservices/ui/views/your_account/your_account_view.dart';
import 'package:socialservices/ui/views/your_orders/your_orders_view.dart';
import 'package:socialservices/ui/views/settings/settings_view.dart';
import 'package:socialservices/ui/views/privacy_policy/privacy_policy_view.dart';
import 'package:socialservices/ui/views/balance_payment/balance_payment_view.dart';
import 'package:socialservices/ui/views/deposit/deposit_view.dart';
import 'package:socialservices/ui/views/loundary/loundary_view.dart';
import 'package:socialservices/ui/views/laundary_dealer/laundary_dealer_view.dart';
import 'package:socialservices/ui/views/become_provider/become_provider_view.dart';
import 'package:socialservices/ui/views/password_manager/password_manager_view.dart';
import 'package:socialservices/ui/views/family_contacts/family_contacts_view.dart';
import 'package:socialservices/ui/views/help/help_view.dart';
import 'package:socialservices/services/pick_image_service.dart';
import 'package:socialservices/ui/views/set_profile/set_profile_view.dart';
import 'package:socialservices/ui/views/update_profile/update_profile_view.dart';
import 'package:socialservices/ui/bottom_sheets/logout/logout_sheet.dart';
import 'package:socialservices/ui/bottom_sheets/delete_account/delete_account_sheet.dart';
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView),
    MaterialRoute(page: StartupView),
    MaterialRoute(page: LoginView),
    MaterialRoute(page: SignupView),
    MaterialRoute(page: ForgotPasswordView),
    MaterialRoute(page: ServicesView),
    MaterialRoute(page: NotificationsView),
    MaterialRoute(page: ProfileView),
    MaterialRoute(page: YourAccountView),
    MaterialRoute(page: YourOrdersView),
    MaterialRoute(page: SettingsView),
    MaterialRoute(page: PrivacyPolicyView),
    MaterialRoute(page: BalancePaymentView),
    MaterialRoute(page: DepositView),
    MaterialRoute(page: LoundaryView),
    MaterialRoute(page: LaundaryDealerView),
    MaterialRoute(page: BecomeProviderView),
    MaterialRoute(page: PasswordManagerView),
    MaterialRoute(page: FamilyContactsView),
    MaterialRoute(page: HelpView),
    MaterialRoute(page: SetProfileView),
    MaterialRoute(page: UpdateProfileView),
// @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: AuthenticationService),
    LazySingleton(classType: PickImageService),
// @stacked-service
  ],
  bottomsheets: [
    StackedBottomsheet(classType: NoticeSheet),
    StackedBottomsheet(classType: LogoutSheet),
    StackedBottomsheet(classType: DeleteAccountSheet),
// @stacked-bottom-sheet
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
    // @stacked-dialog
  ],
)
class App {}
