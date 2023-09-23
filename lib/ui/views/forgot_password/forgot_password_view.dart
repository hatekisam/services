import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'forgot_password_viewmodel.dart';

class ForgotPasswordView extends StackedView<ForgotPasswordViewModel> {
  const ForgotPasswordView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ForgotPasswordViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 60,
              ),
              const Text(
                'Login',
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Outfit',
                  fontSize: 2.5 * 16.0,
                  fontWeight: FontWeight.w900,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                child: Center(
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                      style: TextStyle(
                        color: Color(0xFF6B5E5E),
                        fontFamily: 'Outfit',
                        fontSize: 1.25 * 16.0,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w700,
                        height: 1.0,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Enter the code we sent to',
                        ),
                        TextSpan(
                          text: 'johndoe@gmail.com',
                          style: TextStyle(
                            color: Color(0xFF0386D0),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20.0),
              Form(
                child: Column(
                  children: [
                    // TextFormField(
                    //   validator: viewModel.validateEmail,
                    //   style:
                    //   TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
                    //   decoration: InputDecoration(
                    //     labelText: 'Email',
                    //     labelStyle: TextStyle(
                    //         fontFamily: "Outfit",
                    //         fontSize: 20,
                    //         fontWeight: FontWeight.w700),
                    //     prefixIcon: Icon(Icons.mail),
                    //   ),
                    // ),
                    // const SizedBox(height: 10.0),
                    // TextFormField(
                    //   validator: viewModel.validatePassword,
                    //   obscureText: viewModel.showP,
                    //   style:
                    //   TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
                    //   decoration: InputDecoration(
                    //     labelText: 'Password',
                    //     labelStyle: TextStyle(
                    //         fontFamily: "Outfit",
                    //         fontSize: 20,
                    //         fontWeight: FontWeight.w700),
                    //     prefixIcon: Icon(Icons.lock),
                    //     suffixIcon: IconButton(
                    //       icon: Icon(
                    //         viewModel.showP
                    //             ? Icons.visibility
                    //             : Icons.visibility_off,
                    //       ),
                    //       onPressed: () {
                    //         viewModel.toggleShow();
                    //       },
                    //     ),
                    //   ),
                    // ),
                    // const SizedBox(height: 10.0),
                    Row(
                      children: <Widget>[
                        const Text(
                          'Remember me',
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w700),
                        ),
                        const Spacer(),
                        TextButton(
                          onPressed: () {
                            // viewModel.goToForgot();
                          },
                          child: const Text(
                            'Forgot Password?',
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w700),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20.0)
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              GestureDetector(
                onTap: () {},
                child: RichText(
                  text: const TextSpan(
                    style: TextStyle(
                      color: Color(0xFF6B5E5E),
                      fontFamily: 'Outfit',
                      fontSize: 1.25 * 16.0,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w600,
                      height: 1.0,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Not a member ?',
                      ),
                      TextSpan(
                        text: 'Register',
                        style: TextStyle(
                          color: Color(0xFF0386D0),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Column(
                children: [
                  const Text(
                    "Login with touch id",
                    style: TextStyle(
                        fontFamily: "Outfit",
                        fontSize: 20,
                        fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary:
                            Color(int.parse('0xFFD9D9D9')), // Background color
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(15.0), // Rounded corners
                        ),
                      ),
                      onPressed: () {
                        // Add your onPressed logic here
                      },
                      child: Container(
                        width: 50, // Width of the container
                        height: 60, // Height of the container
                        alignment: Alignment
                            .center, // Center the content horizontally and vertically
                        child: Icon(
                          Icons.fingerprint,
                          size: 50, // Size of the fingerprint icon
                          color: Colors.white, // Icon color
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  ForgotPasswordViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ForgotPasswordViewModel();
}
