import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:socialservices/ui/common/app_colors.dart';
import 'package:socialservices/ui/common/ui_helpers.dart';

import 'home_viewmodel.dart';

class HomeView extends StackedView<HomeViewModel> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    HomeViewModel viewModel,
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
                    const Text("Logo"),
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
                                viewModel.gotoNotifications();
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
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Dashboard',
                          style: TextStyle(
                            color: Color(0xFF000000),
                            fontFamily: 'Outfit',
                            fontSize: 32.0,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w700,
                            height: 1.0,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        RichText(
                          text: TextSpan(
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
                                text: ' 👋',
                              ),
                              TextSpan(
                                text: 'Good morning',
                              ),
                              TextSpan(
                                text: ' John Doe',
                                style: TextStyle(
                                  color: Color(0xFF0386D0),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          '200€',
                          style: TextStyle(
                            color: Color(0xFF000000),
                            fontFamily: 'Outfit',
                            fontSize: 32.0,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w700,
                            height: 1.0,
                          ),
                        ),
                        Text(
                          'Currrent Balance',
                          style: TextStyle(
                            color: Color(0xFF000000),
                            fontFamily: 'Outfit',
                            fontSize: 20.0,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w700,
                            height: 1.0,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Expanded(
                                child: ElevatedButton(
                                    onPressed: () {
                                      viewModel.gotoServices();
                                    },
                                    style: ButtonStyle(
                                      elevation:
                                          MaterialStateProperty.all<double>(
                                              0), // Remove elevation
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                        Color(int.parse('0xFFFFFFFF')),
                                      ),
                                      padding: MaterialStateProperty.all<
                                          EdgeInsetsGeometry>(
                                        EdgeInsets.zero, // Remove padding
                                      ),
                                    ),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          border: Border.all(
                                              color: Color(0xFF466FE6),
                                              width: 2.0)),
                                      width: double.infinity,
                                      height: 150,
                                      child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              15.0),
                                                      color: Color(int.parse(
                                                          '0xFF466FE6')),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              15.0),
                                                      child: Icon(
                                                        Icons.person_2,
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                IconButton(
                                                  onPressed: () {},
                                                  icon: Icon(Icons.more_vert),
                                                  color: Colors.black,
                                                )
                                              ],
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Text(
                                                "Services",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontFamily: "Outfit",
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 22.0),
                                              ),
                                            )
                                          ]),
                                    ))),
                            SizedBox(
                              width: 10.0,
                            ),
                            Expanded(
                                child: ElevatedButton(
                                    onPressed: () {},
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                        Color(int.parse('0xFFD9D9D9')),
                                      ),
                                    ),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      height: 150,
                                      child: const Text("Tab1"),
                                    ))),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Expanded(
                                child: ElevatedButton(
                                    onPressed: () {},
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                        Color(int.parse('0xFFD9D9D9')),
                                      ),
                                    ),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      height: 150,
                                      child: const Text("Tab1"),
                                    ))),
                            SizedBox(
                              width: 10.0,
                            ),
                            Expanded(
                                child: ElevatedButton(
                                    onPressed: () {},
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                        Color(int.parse('0xFFD9D9D9')),
                                      ),
                                    ),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      height: 150,
                                      child: const Text("Tab1"),
                                    ))),
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }

  @override
  HomeViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      HomeViewModel();
}
