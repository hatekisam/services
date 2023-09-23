import 'package:socialservices/app/app.locator.dart';
import 'package:socialservices/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class User {
  final String profilePhotoUrl;
  final String name;
  final double rating;
  final int id;

  User({
    required this.profilePhotoUrl,
    required this.name,
    required this.rating,
    required this.id,
  });
}

class LoundaryViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  void goBack() {
    _navigationService.back();
  }

  List<User> laundryDealers = [
    User(
      profilePhotoUrl:
          'https://i.pinimg.com/564x/5d/61/5b/5d615b7ad1b91f5b7494395aa3d0feec.jpg',
      name: 'John Doe',
      rating: 4.5,
      id: 1,
    ),
    User(
      profilePhotoUrl:
          'https://i.pinimg.com/236x/d7/35/18/d7351825ea872367f647b74b8b18b169.jpg',
      name: 'Jane Smith',
      rating: 3.8,
      id: 2,
    ),
    User(
      profilePhotoUrl:
          'https://i.pinimg.com/236x/88/08/b8/8808b840ef5f755396e2b8f465e3d4bf.jpg',
      name: 'Alice Johnson',
      rating: 4.0,
      id: 3,
    ),
    User(
      profilePhotoUrl:
          'https://i.pinimg.com/236x/0d/6c/10/0d6c10e0dbbc54ac30bbd5328fa12cd5.jpg',
      name: 'Bob Brown',
      rating: 4.2,
      id: 4,
    ),
    User(
      profilePhotoUrl:
          'https://i.pinimg.com/236x/27/5f/b3/275fb3896ff9a494c88311237eb961b2.jpg',
      name: 'Eva Wilson',
      rating: 3.5,
      id: 5,
    ),
    User(
      profilePhotoUrl:
      'https://i.pinimg.com/236x/27/5f/b3/275fb3896ff9a494c88311237eb961b2.jpg',
      name: 'Eva Wilson',
      rating: 3.5,
      id: 5,
    ),
    User(
      profilePhotoUrl:
      'https://i.pinimg.com/236x/27/5f/b3/275fb3896ff9a494c88311237eb961b2.jpg',
      name: 'Eva Wilson',
      rating: 3.5,
      id: 5,
    ),
    User(
      profilePhotoUrl:
      'https://i.pinimg.com/236x/27/5f/b3/275fb3896ff9a494c88311237eb961b2.jpg',
      name: 'Eva Wilson',
      rating: 3.5,
      id: 5,
    ),User(
      profilePhotoUrl:
      'https://i.pinimg.com/236x/27/5f/b3/275fb3896ff9a494c88311237eb961b2.jpg',
      name: 'Eva Wilson',
      rating: 3.5,
      id: 5,
    ),User(
      profilePhotoUrl:
      'https://i.pinimg.com/236x/27/5f/b3/275fb3896ff9a494c88311237eb961b2.jpg',
      name: 'Eva Wilson',
      rating: 3.5,
      id: 5,
    ),
    User(
      profilePhotoUrl:
      'https://i.pinimg.com/236x/27/5f/b3/275fb3896ff9a494c88311237eb961b2.jpg',
      name: 'Eva Wilson',
      rating: 3.5,
      id: 7,
    ),
    User(
      profilePhotoUrl:
      'https://i.pinimg.com/236x/27/5f/b3/275fb3896ff9a494c88311237eb961b2.jpg',
      name: 'Eva Wilson',
      rating: 3.5,
      id: 8,
    ),





  ];

  void goToDealer(int id) {
    _navigationService.navigateToLaundaryDealerView(id: id);
  }

  void gotoProfile() {
    _navigationService.navigateToProfileView();
  }

  void goToNotifications() {
    _navigationService.navigateToNotificationsView();
  }
}
