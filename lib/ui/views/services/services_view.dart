import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'services_viewmodel.dart';

class ServicesView extends StackedView<ServicesViewModel> {
  const ServicesView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ServicesViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 25.0, vertical: 5.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(children: [
                      IconButton(
                          onPressed: () {
                            viewModel.goBack();
                          },
                          icon: Icon(Icons.arrow_back_ios)),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Services",
                        style: TextStyle(
                          color: Color(0xFF000000),
                          fontFamily: "Outfit",
                          fontSize: 24.0,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w700,
                          height: 1.0,
                        ),
                      )
                    ]),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50.0),
                            color: Color(int.parse('0xFFD9D9D9')),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: IconButton(
                              onPressed: () {
                                viewModel.goToNotifications();
                                ;
                              },
                              icon: Icon(
                                Icons.notifications_none,
                                size: 20,
                              ),
                              color: Colors.black,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        GestureDetector(
                          onTap: () {
                            viewModel.gotoProfile();
                          },
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(
                                "https://i.pinimg.com/564x/5d/61/5b/5d615b7ad1b91f5b7494395aa3d0feec.jpg"),
                            radius: 25,
                          ),
                        )
                      ],
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: double.infinity, // Make the button width 100%
                      child: ElevatedButton(
                        onPressed: () {
                          // Implement the login logic
                        },
                        style: ButtonStyle(
                          // Remove elevation
                          backgroundColor: MaterialStateProperty.all<Color>(
                            Color(int.parse('0xFFD9D9D9')),
                          ),
                          elevation: MaterialStateProperty.all<double>(0),
                          padding:
                              MaterialStateProperty.all<EdgeInsetsGeometry>(
                            EdgeInsets.zero, // Remove padding
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Text(''),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: double.infinity, // Make the button width 100%
                      child: ElevatedButton(
                        onPressed: () {
                          // Implement the login logic
                        },
                        style: ButtonStyle(
                          elevation: MaterialStateProperty.all<double>(
                              0), // Remove elevation
                          backgroundColor: MaterialStateProperty.all<Color>(
                            Color(int.parse('0xFFD9D9D9')),
                          ),
                          padding:
                              MaterialStateProperty.all<EdgeInsetsGeometry>(
                            EdgeInsets.zero, // Remove padding
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Text(''),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: double.infinity, // Make the button width 100%
                      child: ElevatedButton(
                        onPressed: () {
                          // Implement the login logic
                        },
                        style: ButtonStyle(
                          elevation: MaterialStateProperty.all<double>(
                              0), // Remove elevation
                          backgroundColor: MaterialStateProperty.all<Color>(
                            Color(int.parse('0xFFD9D9D9')),
                          ),
                          padding:
                              MaterialStateProperty.all<EdgeInsetsGeometry>(
                            EdgeInsets.zero, // Remove padding
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Text(''),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: double.infinity, // Make the button width 100%
                      child: ElevatedButton(
                        onPressed: () {
                          viewModel.gotoLoundary();
                        },
                        style: ButtonStyle(
                          elevation: MaterialStateProperty.all<double>(
                              0), // Remove elevation
                          backgroundColor: MaterialStateProperty.all<Color>(
                            Color(int.parse('0xFFFFFFFF')),
                          ),
                          padding:
                              MaterialStateProperty.all<EdgeInsetsGeometry>(
                            EdgeInsets.zero, // Remove padding
                          ),
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                  color: Color(0xFF466FE6), width: 2)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(children: [
                              Icon(Icons.local_laundry_service_sharp,
                                  color: Color(0xFF466FE6)),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                children: [
                                  Text(
                                    "Loundary",
                                    style: TextStyle(
                                      color: Color(
                                          0xFF000000), // Color in hexadecimal format
                                      fontFamily: "Outfit",
                                      fontSize:
                                          20.0, // 1.5rem equivalent in Flutter
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w700,
                                      height: 1.0,
                                    ),
                                  ),
                                  Text(
                                    "30 per kg",
                                    style: TextStyle(
                                      color: Color(
                                          0xFF6B5E5E), // Color in hexadecimal format
                                      fontFamily: "Outfit",
                                      fontSize:
                                          18.0, // 1.25rem equivalent in Flutter
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w500,
                                      height: 1.0,
                                    ),
                                  )
                                ],
                              )
                            ]),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ));
  }

  @override
  ServicesViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ServicesViewModel();
}
