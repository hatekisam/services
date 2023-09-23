import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'your_account_viewmodel.dart';

class YourAccountView extends StackedView<YourAccountViewModel> {
  const YourAccountView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    YourAccountViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 5.0),
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
                      icon: Icon(Icons.arrow_back_ios),
                      iconSize: 20,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Account",
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
                ],
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 50,
                      ),
                      SizedBox(
                        child: Container(
                          height: 610,
                          child: ListView(
                            children: [
                              Column(
                                children: [
                                  Center(
                                    child: Container(
                                      width:
                                          120, // Adjust the width of the circular image
                                      height:
                                          120, // Adjust the height of the circular image
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: NetworkImage(
                                              'https://googleflutter.com/sample_image.jpg'),
                                        ),
                                      ),
                                      child: IconButton(
                                        icon: Icon(Icons.edit),
                                        onPressed: () {},
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Jane Doer",
                                    style: TextStyle(
                                      color: Color(0xFF000000),
                                      fontFamily: "Outfit",
                                      fontSize:
                                          22.0, // 1.25rem equivalent in Flutter
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w700,
                                      height: 1.0,
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text("Name",
                                  style: TextStyle(
                                    color: Color(0xFF000000),
                                    fontFamily: "Outfit",
                                    fontSize:
                                        18.0, // 1.25rem equivalent in Flutter
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w700,
                                    height: 1.0,
                                  )),
                              SizedBox(
                                height: 5,
                              ),
                              SizedBox(
                                  width: double
                                      .infinity, // Make the button width 100%
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Color(0xFFD9D9D9),
                                        borderRadius:
                                            BorderRadius.circular(10.0)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(15.0),
                                      child: Text("Jane Doer",
                                          style: TextStyle(
                                            color: Color(0xFF000000),
                                            fontFamily: "Outfit",
                                            fontSize:
                                                20.0, // 1.25rem equivalent in Flutter
                                            fontWeight: FontWeight.w700,
                                          )),
                                    ),
                                  )),
                              SizedBox(
                                height: 10,
                              ),
                              Text("Email",
                                  style: TextStyle(
                                    color: Color(0xFF000000),
                                    fontFamily: "Outfit",
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w700,
                                  )),
                              SizedBox(
                                height: 5,
                              ),
                              SizedBox(
                                  width: double.infinity,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Color(0xFFD9D9D9),
                                        borderRadius:
                                            BorderRadius.circular(10.0)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(15.0),
                                      child: Text("janedoer@gmial.com",
                                          style: TextStyle(
                                            color: Color(0xFF000000),
                                            fontFamily: "Outfit",
                                            fontSize:
                                                20.0, // 1.25rem equivalent in Flutter
                                            fontWeight: FontWeight.w700,
                                          )),
                                    ),
                                  )),
                              SizedBox(
                                height: 10,
                              ),
                              Text("Phone Number",
                                  style: TextStyle(
                                    color: Color(0xFF000000),
                                    fontFamily: "Outfit",
                                    fontSize:
                                        18.0, // 1.25rem equivalent in Flutter
                                    fontWeight: FontWeight.w700,
                                  )),
                              SizedBox(
                                height: 5,
                              ),
                              SizedBox(
                                  width: double
                                      .infinity, // Make the button width 100%
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Color(0xFFD9D9D9),
                                        borderRadius:
                                            BorderRadius.circular(10.0)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(15.0),
                                      child: Text("07777777777",
                                          style: TextStyle(
                                            color: Color(0xFF000000),
                                            fontFamily: "Outfit",
                                            fontSize:
                                                20.0, // 1.25rem equivalent in Flutter
                                            fontWeight: FontWeight.w700,
                                          )),
                                    ),
                                  )),
                              SizedBox(
                                height: 10,
                              ),
                              SizedBox(
                                width: double
                                    .infinity, // Make the button width 100%
                                child: ElevatedButton(
                                  onPressed: () {
                                    viewModel.goToFamily();
                                  },
                                  style: ButtonStyle(
                                    elevation:
                                        MaterialStateProperty.all<double>(0),
                                    padding: MaterialStateProperty.all<
                                        EdgeInsetsGeometry>(
                                      EdgeInsets.zero, // Remove padding
                                    ),
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                      Color(int.parse('0xFFFFFFFF')),
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.person_2_rounded,
                                            color: Color(0xFF466FE6),
                                          ),
                                          SizedBox(
                                            width: 1.0,
                                          ),
                                          Text(
                                            "Family Contacts",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 20,
                                                fontWeight: FontWeight.w700),
                                          ),
                                        ],
                                      ),
                                      Icon(
                                        Icons.arrow_forward_ios,
                                        color: Colors.black,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: double.infinity, // Make the button width 100%
                        child: ElevatedButton(
                          onPressed: () {
                            viewModel.goUpdate();
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                              Color(int.parse('0xFF466FE6')),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Text(
                              'Update Profile',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w700),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        )));
  }

  @override
  YourAccountViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      YourAccountViewModel();
}
