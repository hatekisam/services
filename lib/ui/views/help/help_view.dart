import 'package:flutter/material.dart';
import 'package:socialservices/ui/components/drop_item.dart';
import 'package:stacked/stacked.dart';

import 'help_viewmodel.dart';

class HelpView extends StackedView<HelpViewModel> {
  const HelpView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    HelpViewModel viewModel,
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
                        width: 2,
                      ),
                      Text(
                        "Help Center",
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 20.0,
                        ),
                        TextField(
                          decoration: InputDecoration(
                            hintText: 'Search ',
                            hintStyle: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 20), // Placeholder text
                            filled: true, // To give it a gray background
                            fillColor: Colors.grey[200], // Background color
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide.none, // Remove the border
                              borderRadius: BorderRadius.circular(
                                  100), // Full border radius
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide.none, // Remove the border
                              borderRadius: BorderRadius.circular(
                                  100), // Full border radius
                            ),
                            contentPadding:
                                EdgeInsets.all(12.0), // Optional padding
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      color: viewModel.activeTab == 1
                                          ? Colors.blue
                                          : Colors.grey,
                                      width:
                                          2.0, // Set the border width as desired
                                    ),
                                  ),
                                ),
                                child: ElevatedButton(
                                  onPressed: () {
                                    viewModel.toFaqs();
                                  },
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all(Colors.white),
                                    elevation:
                                        MaterialStateProperty.all<double>(0),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "FAQs",
                                      style: TextStyle(
                                          fontSize: 24,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      color: viewModel.activeTab == 2
                                          ? Colors.blue
                                          : Colors.grey,
                                      width:
                                          2.0, // Set the border width as desired
                                    ),
                                  ),
                                ),
                                child: ElevatedButton(
                                  onPressed: () {
                                    viewModel.toContacts();
                                  },
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all(Colors.white),
                                    elevation:
                                        MaterialStateProperty.all<double>(0),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "Contact",
                                      style: TextStyle(
                                          fontSize: 24,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        viewModel.activeTab == 1
                            ? Column(
                                children: [
                                  SizedBox(
                                    height: 10,
                                  ),
                                  SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      children: List.generate(
                                        viewModel.categories.length,
                                        (index) => GestureDetector(
                                          onTap: () {
                                            viewModel
                                                .setSelectedCategory(index);
                                          },
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 5.0),
                                            child: Container(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 16, vertical: 8),
                                              decoration: BoxDecoration(
                                                color: viewModel
                                                            .selectedCategoryIndex ==
                                                        index
                                                    ? Colors.blue
                                                    : Colors.black38,
                                                borderRadius:
                                                    BorderRadius.circular(16),
                                              ),
                                              child: Text(
                                                viewModel.categories[index],
                                                style: TextStyle(
                                                    color: viewModel
                                                                .selectedCategoryIndex ==
                                                            index
                                                        ? Colors.white
                                                        : Colors.black,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 20),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  DropItem(
                                      title:
                                          "How do i get a good loundary dealer",
                                      body:
                                          "To get a loundary dealer you go to the laundary dealers page from the loundary service then you view the dealer with high rates and good review"),
                                  DropItem(
                                      title: "Your account",
                                      body:
                                          "To get a loundary dealer you go to the laundary dealers page from the loundary service then you view the dealer with high rates and good review"),
                                  DropItem(
                                      title: "Settings",
                                      body:
                                          "To get a loundary dealer you go to the laundary dealers page from the loundary service then you view the dealer with high rates and good review"),
                                ],
                              )
                            : Column(
                                children: [
                                  DropItem(
                                      title: "Gmail",
                                      body: "serviceprovider@gmail.com"),
                                  DropItem(
                                      title: "Facebook",
                                      body: "serviceprovider"),
                                  DropItem(
                                      title: "Instargram",
                                      body: "serviceprovider"),
                                  DropItem(
                                      title: "Twitter",
                                      body: "serviceprovider"),
                                  DropItem(
                                      title: "Youtube", body: "serviceprovider")
                                ],
                              )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }

  @override
  HelpViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      HelpViewModel();
}
