import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:stacked/stacked.dart';

import 'signup_viewmodel.dart';

class SignupView extends StackedView<SignupViewModel> {
  const SignupView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    SignupViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Align(
              alignment: Alignment.center,
              child: Container(
                  height: 500, // Adjust the height as needed
                  child: Column(
                    children: [
                      Text(
                        "Register",
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Outfit',
                          fontSize: 2.5 * 16.0,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w700,
                          height: 1.0,
                        ),
                      ),
                      SizedBox(height: 20.0),
                      Expanded(
                        child: Stepper(
                          elevation: 0,
                          controlsBuilder:
                              (BuildContext context, ControlsDetails details) {
                            final step = viewModel.currentStep;
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  step == 0
                                      ? Container()
                                      : step == 3
                                          ? OutlinedButton(
                                              onPressed: details.onStepCancel,
                                              child: const Text(
                                                'Skip',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w900,
                                                    fontSize: 20),
                                              ),
                                            )
                                          : OutlinedButton(
                                              onPressed: details.onStepCancel,
                                              child: const Text('Back',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w900,
                                                      fontSize: 20)),
                                            ),
                                  step == 3
                                      ? Mutation(
                                          options: MutationOptions(
                                            document:
                                                gql(viewModel.signupMutation()),
                                            onError: (exception) {
                                              print(exception);
                                              viewModel.showSnackBar(
                                                  context, "Signup failure");
                                            },
                                            onCompleted: (resultData) {
                                              if (resultData != null) {
                                                viewModel.showSnackBar(context,
                                                    "Signed up successfully");
                                                viewModel.goToDashboard();
                                              }
                                            },
                                          ),
                                          builder: (runMutation, result) {
                                            if (result != null &&
                                                result.isLoading) {
                                              return const Center(
                                                  child:
                                                      CircularProgressIndicator());
                                            }
                                            return ElevatedButton(
                                              onPressed: () {
                                                viewModel
                                                    .createUser(runMutation);
                                              },
                                              style: ElevatedButton.styleFrom(
                                                  minimumSize:
                                                      const Size(150, 40)),
                                              child: const Text('Sign Up'),
                                            );
                                          },
                                        )
                                      : ElevatedButton(
                                          onPressed: details.onStepContinue,
                                          child: const Text('Next',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w900,
                                                  fontSize: 20)),
                                        ),
                                ],
                              ),
                            );
                          },
                          type: StepperType.horizontal,
                          physics: const ScrollPhysics(),
                          onStepTapped: (value) {
                            viewModel.goToStep(value);
                          },
                          onStepContinue: () {
                            viewModel.goToNextStep();
                          },
                          onStepCancel: () {
                            viewModel.goToPreviousStep();
                          },
                          currentStep: viewModel.currentStep,
                          steps: [
                            Step(
                              title: const Text(''),
                              content: Form(
                                key: viewModel.formOne,
                                child: Column(
                                  children: [
                                    const Text(
                                      "Personal Information",
                                      style: TextStyle(
                                        color: Color(0xFF6B5E5E),
                                        fontFamily: 'Outfit',
                                        fontSize: 2.5 * 8.0,
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.w700,
                                        height: 1.0,
                                      ),
                                    ),
                                    TextFormField(
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w800),
                                      controller: viewModel.firstName,
                                      decoration: InputDecoration(
                                          labelStyle: TextStyle(
                                              fontFamily: "Outfit",
                                              fontSize: 20,
                                              fontWeight: FontWeight.w700),
                                          labelText: 'First Name',
                                          prefixIcon:
                                              Icon(Icons.person_2_rounded)),
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return 'Please provide the first name';
                                        }
                                        return null;
                                      },
                                    ),
                                    TextFormField(
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w800),
                                      controller: viewModel.secondName,
                                      decoration: InputDecoration(
                                          labelStyle: TextStyle(
                                              fontFamily: "Outfit",
                                              fontSize: 20,
                                              fontWeight: FontWeight.w700),
                                          labelText: 'Second Name',
                                          prefixIcon:
                                              Icon(Icons.person_2_rounded)),
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return 'Please provide the second name';
                                        }
                                        return null;
                                      },
                                    ),
                                    TextFormField(
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w800),
                                      controller: viewModel.nationalID,
                                      decoration: InputDecoration(
                                          labelStyle: TextStyle(
                                              fontFamily: "Outfit",
                                              fontSize: 20,
                                              fontWeight: FontWeight.w700),
                                          labelText: 'National ID',
                                          prefixIcon: Icon(Icons.credit_card)),
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return 'Please provide the nationa Id card number';
                                        }
                                        return null;
                                      },
                                    ),
                                  ],
                                ),
                              ),
                              isActive: viewModel.currentStep >= 0,
                            ),
                            Step(
                              title: const Text(''),
                              content: Form(
                                key: viewModel.formTwo,
                                child: Column(
                                  children: [
                                    const Text(
                                      "Credentials and Email",
                                      style: TextStyle(
                                        color: Color(0xFF6B5E5E),
                                        fontFamily: 'Outfit',
                                        fontSize: 2.5 * 8.0,
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.w700,
                                        height: 1.0,
                                      ),
                                    ),
                                    TextFormField(
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w800),
                                      controller: viewModel.email,
                                      decoration: InputDecoration(
                                          labelStyle: TextStyle(
                                              fontFamily: "Outfit",
                                              fontSize: 20,
                                              fontWeight: FontWeight.w700),
                                          labelText: 'Email',
                                          prefixIcon: Icon(Icons.mail)),
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return 'Please provide an email address';
                                        }
                                        return null;
                                      },
                                    ),
                                    TextFormField(
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w800),
                                      obscureText: viewModel.showP,
                                      controller: viewModel.password,
                                      decoration: InputDecoration(
                                          labelStyle: TextStyle(
                                              fontFamily: "Outfit",
                                              fontSize: 20,
                                              fontWeight: FontWeight.w700),
                                          labelText: 'Password',
                                          prefixIcon: Icon(Icons.lock),
                                          suffix: IconButton(
                                            icon: viewModel.showP
                                                ? Icon(
                                                    Icons.visibility,
                                                  )
                                                : Icon(Icons.visibility_off),
                                            onPressed: () {
                                              viewModel.toggleShowP();
                                            },
                                          )),
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return 'Please provide a password';
                                        }
                                        return null;
                                      },
                                    ),
                                    TextFormField(
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w800),
                                      obscureText: viewModel.showP,
                                      controller: viewModel.confP,
                                      decoration: InputDecoration(
                                          labelStyle: TextStyle(
                                              fontFamily: "Outfit",
                                              fontSize: 20,
                                              fontWeight: FontWeight.w700),
                                          labelText: 'Confirm Password',
                                          prefixIcon: Icon(Icons.lock),
                                          suffix: IconButton(
                                            icon: viewModel.showP
                                                ? Icon(
                                                    Icons.visibility,
                                                  )
                                                : Icon(Icons.visibility_off),
                                            onPressed: () {
                                              viewModel.toggleShowP();
                                            },
                                          )),
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return 'Please confirm your password';
                                        }
                                        if (value != viewModel.password.text) {
                                          return 'Passwords do not match';
                                        }
                                        return null;
                                      },
                                    ),
                                  ],
                                ),
                              ),
                              isActive: viewModel.currentStep >= 1,
                            ),
                            Step(
                              title: const Text(''),
                              content: Form(
                                key: viewModel.formThree,
                                child: Column(
                                  children: [
                                    const Text(
                                      "Additional Information",
                                      style: TextStyle(
                                        color: Color(0xFF6B5E5E),
                                        fontFamily: 'Outfit',
                                        fontSize: 2.5 * 8.0,
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.w700,
                                        height: 1.0,
                                      ),
                                    ),
                                    TextFormField(
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w800),
                                      controller: viewModel.phone,
                                      decoration: InputDecoration(
                                          labelStyle: TextStyle(
                                              fontFamily: "Outfit",
                                              fontSize: 20,
                                              fontWeight: FontWeight.w700),
                                          labelText: 'Telephone',
                                          prefixIcon: Icon(Icons.phone)),
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return 'Please provide a phone number';
                                        }
                                        return null;
                                      },
                                    ),
                                    TextFormField(
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w800),
                                      controller: viewModel.address,
                                      decoration: InputDecoration(
                                        labelStyle: TextStyle(
                                            fontFamily: "Outfit",
                                            fontSize: 20,
                                            fontWeight: FontWeight.w700),
                                        labelText: 'Address',
                                        prefixIcon: Icon(Icons.location_on),
                                      ),
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return 'Please provide an address';
                                        }
                                        return null;
                                      },
                                    ),
                                    TextFormField(
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w800),
                                      controller: viewModel.gender,
                                      decoration: InputDecoration(
                                        labelStyle: TextStyle(
                                            fontFamily: "Outfit",
                                            fontSize: 20,
                                            fontWeight: FontWeight.w700),
                                        labelText: 'Gender',
                                        prefixIcon: Icon(Icons.person_outline),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              isActive: viewModel.currentStep >= 2,
                            ),
                            Step(
                              title: const Text(''),
                              content: Column(
                                children: [
                                  const Text(
                                    "Profile",
                                    style: TextStyle(
                                      color: Color(0xFF6B5E5E),
                                      fontFamily: 'Outfit',
                                      fontSize: 2.5 * 8.0,
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w700,
                                      height: 1.0,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Stack(children: [
                                    viewModel.img != null
                                        ? CircleAvatar(
                                            radius: 72,
                                            backgroundImage:
                                                MemoryImage(viewModel.img!),
                                          )
                                        : CircleAvatar(
                                            backgroundColor: Color(0xFFD9D9D9),
                                            radius: 72,
                                            child: Icon(
                                              Icons.person_2_rounded,
                                              color: Colors.white,
                                              size: 90,
                                            ),
                                          ),
                                    Positioned(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Color(int.parse(
                                              '0xFF466FE6')), // Background color
                                        ),
                                        child: IconButton(
                                          onPressed: () {
                                            viewModel.selectImage();
                                          },
                                          icon: Icon(
                                            Icons.add_a_photo,
                                            size: 30,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      bottom: 0,
                                      right: 2,
                                    ),
                                  ]),
                                  SizedBox(
                                    height: 50,
                                  )
                                ],
                              ),
                              isActive: viewModel.currentStep == 3,
                            ),
                          ],
                        ),
                      ),
                    ],
                  )),
            ),
          ),
        ));
  }

  @override
  SignupViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      SignupViewModel();
}
