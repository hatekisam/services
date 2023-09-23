import 'dart:typed_data';

import 'package:image_picker/image_picker.dart';
import 'package:socialservices/app/app.locator.dart';
import 'package:socialservices/services/pick_image_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class UpdateProfileViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final _pickImage = locator<PickImageService>();
  void goBack() {
    _navigationService.back();
  }

  Uint8List? img;
  void selectImage() async {
    img = await _pickImage.pickImage(ImageSource.gallery);
    rebuildUi();
  }

  void save() {
    print("Hello");
  }
}
