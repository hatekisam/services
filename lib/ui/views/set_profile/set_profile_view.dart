import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'set_profile_viewmodel.dart';

class SetProfileView extends StackedView<SetProfileViewModel> {
  const SetProfileView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    SetProfileViewModel viewModel,
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
                        icon: Icon(Icons.arrow_back_ios),
                        iconSize: 20,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Profile",
                        style: TextStyle(
                          color: Color(0xFF000000),
                          fontSize: 24.0,
                          fontWeight: FontWeight.w700,
                        ),
                      )
                    ]),
                  ],
                ),
                Expanded(
                    child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Stack(children: [
                        viewModel.img != null
                            ? CircleAvatar(
                                radius: 72,
                                backgroundImage: MemoryImage(viewModel.img!),
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
                              color: Color(
                                  int.parse('0xFF466FE6')), // Background color
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
                        width: double.infinity,
                        child: Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
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
                              Text("Bio",
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
                                minLines: 3,
                                maxLines: 4,
                                decoration: InputDecoration(
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
                              Text("National Identification Card",
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
                              Text("Address",
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
                                height: 50,
                              ),
                              SizedBox(
                                width: double.infinity,
                                child: Expanded(
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Text("Set Profile",
                                          style: TextStyle(
                                            fontFamily: "Outfit",
                                            fontSize:
                                                20.0, // 1.25rem equivalent in Flutter
                                            fontWeight: FontWeight.w700,
                                          )),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ))
              ],
            ),
          ),
        ));
  }

  @override
  SetProfileViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      SetProfileViewModel();
}
