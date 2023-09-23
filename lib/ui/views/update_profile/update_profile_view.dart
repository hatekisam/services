import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'update_profile_viewmodel.dart';

class UpdateProfileView extends StackedView<UpdateProfileViewModel> {
  const UpdateProfileView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    UpdateProfileViewModel viewModel,
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
                      "Update Profile",
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
                                  Stack(children: [
                                    viewModel.img != null
                                        ? CircleAvatar(
                                            radius: 72,
                                            backgroundImage:
                                                MemoryImage(viewModel.img!),
                                          )
                                        : CircleAvatar(
                                            // backgroundColor: NetworkImage("https://i.pinimg.com/564x/5d/61/5b/5d615b7ad1b91f5b7494395aa3d0feec.jpg"),
                                            radius: 72,
                                            backgroundImage: NetworkImage(
                                                "https://i.pinimg.com/564x/5d/61/5b/5d615b7ad1b91f5b7494395aa3d0feec.jpg"),
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
                                    height: 10,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text("Name",
                                  style: TextStyle(
                                    color: Color(0xFF000000),
                                    fontFamily: "Outfit",
                                    fontSize:
                                        20.0, // 1.25rem equivalent in Flutter
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w700,
                                    height: 1.0,
                                  )),
                              SizedBox(
                                height: 5,
                              ),
                              TextField(
                                decoration: InputDecoration(
                                  hintText: "Jane Doer",
                                  hintStyle: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700),
                                  filled: true,
                                  fillColor: Colors.grey[200],
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  contentPadding: EdgeInsets.symmetric(
                                      vertical: 12.0,
                                      horizontal:
                                          16.0), // Adjust padding as needed
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text("Email",
                                  style: TextStyle(
                                    color: Color(0xFF000000),
                                    fontFamily: "Outfit",
                                    fontSize:
                                        20.0, // 1.25rem equivalent in Flutter
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w700,
                                    height: 1.0,
                                  )),
                              SizedBox(
                                height: 5,
                              ),
                              TextField(
                                decoration: InputDecoration(
                                  hintText: "janedoer@gmail.com",
                                  hintStyle: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700),
                                  filled: true,
                                  fillColor: Colors.grey[200],
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  contentPadding: EdgeInsets.symmetric(
                                      vertical: 12.0,
                                      horizontal:
                                          16.0), // Adjust padding as needed
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text("Phone Number",
                                  style: TextStyle(
                                    color: Color(0xFF000000),
                                    fontFamily: "Outfit",
                                    fontSize:
                                        20.0, // 1.25rem equivalent in Flutter
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w700,
                                    height: 1.0,
                                  )),
                              SizedBox(
                                height: 5,
                              ),
                              TextField(
                                decoration: InputDecoration(
                                  hintText: "072948392343",
                                  hintStyle: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700),
                                  filled: true,
                                  fillColor: Colors.grey[200],
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  contentPadding: EdgeInsets.symmetric(
                                      vertical: 12.0,
                                      horizontal:
                                          16.0), // Adjust padding as needed
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: double.infinity, // Make the button width 100%
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                              Color(int.parse('0xFF466FE6')),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Text(
                              'Save',
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
  UpdateProfileViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      UpdateProfileViewModel();
}
