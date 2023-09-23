import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'package:socialservices/app/app.locator.dart';
import 'package:socialservices/app/app.router.dart';
import 'package:socialservices/services/pick_image_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class SignupViewModel extends BaseViewModel {
  int currentStep = 0;
  final _pickImage = locator<PickImageService>();
  final _navigationService = locator<NavigationService>();
  final firstName = TextEditingController();
  final secondName = TextEditingController();
  final nationalID = TextEditingController();
  final email = TextEditingController();
  final password = TextEditingController();
  final confP = TextEditingController();
  final phone = TextEditingController();
  final address = TextEditingController();
  final gender = TextEditingController();
  Uint8List? img;
  final GlobalKey<FormState> formOne = GlobalKey<FormState>();
  final GlobalKey<FormState> formTwo = GlobalKey<FormState>();
  final GlobalKey<FormState> formThree = GlobalKey<FormState>();
  final GlobalKey<FormState> formFour = GlobalKey<FormState>();
  bool showP = true;

  void toggleShowP() {
    showP = !showP;
    rebuildUi();
  }

  void goToDashboard() {
    _navigationService.replaceWithHomeView();
  }

  void goToStep(int step) {
    if (step >= 0 && step < 4) {
      currentStep = step;
      notifyListeners();
    }
  }

  void selectImage() async {
    img = await _pickImage.pickImage(ImageSource.gallery);
    rebuildUi();
  }

  void showSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  String signupMutation() {
    return '''
    mutation CreateUser(\$username: String!, \$email: String!, \$password: String, \$verified: Boolean) {
      createUser(input: {
        username: \$username
        email: \$email
        password: \$password
        verified: \$verified
      }) {
        user {
      username
      id
      email
      verified
      admin
      numberOfNotifications
      createdAt
      updatedAt
    }
      }
    }
  ''';
  }

  // void createUser(RunMutation runMutation) {
  //   final username = firstName.text + secondName.text;
  //   runMutation({
  //     'input': {
  //       'username': username,
  //       'email': email.text,
  //       'password': password.text,
  //       'verified': false,
  //     }
  //   });
  // }
  void createUser(RunMutation runMutation) {
    final username = firstName.text + secondName.text;
    final emailValue = email.text;

    runMutation({
      'username': username, // Pass the username variable
      'email': emailValue, // Pass the email variable
      'password': password.text,
      'verified': false,
    });
  }

  void goToNextStep() {
    // if (currentStep < 3) {
    //   currentStep++;
    //   notifyListeners();
    // }
    if (currentStep == 0) {
      if (formOne.currentState!.validate()) {
        currentStep++;
        rebuildUi();
      }
    } else if (currentStep == 1) {
      if (formTwo.currentState!.validate()) {
        currentStep++;
        rebuildUi();
      }
    } else {
      if (formThree.currentState!.validate()) {
        currentStep++;
        rebuildUi();
      }
    }
  }

  void goToPreviousStep() {
    if (currentStep > 0) {
      currentStep--;
      notifyListeners();
    }
  }
}
