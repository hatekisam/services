import 'package:flutter/material.dart';
import 'package:socialservices/ui/components/dealer_card.dart';
import 'package:stacked/stacked.dart';

import 'loundary_viewmodel.dart';

class LoundaryView extends StackedView<LoundaryViewModel> {
  const LoundaryView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    LoundaryViewModel viewModel,
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
                        width: 2,
                      ),
                      Text(
                        "Loundary",
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
                      height: 20.0,
                    ),
                    Text(
                      'List of Loundary Dealers',
                      style: TextStyle(
                        color: Color(0xFF000000),
                        fontFamily: 'Outfit',
                        fontSize: 24.0,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w700,
                        height: 1.0,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Search Dealer by Namefasdfs',
                        hintStyle: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 20), // Placeholder text
                        filled: true, // To give it a gray background
                        fillColor: Colors.grey[200], // Background color
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide.none, // Remove the border
                          borderRadius:
                          BorderRadius.circular(100), // Full border radius
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide.none, // Remove the border
                          borderRadius:
                          BorderRadius.circular(100), // Full border radius
                        ),
                        contentPadding:
                        EdgeInsets.all(12.0), // Optional padding
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
                Expanded(
                  child: GridView(
                    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200,
                      mainAxisExtent: 220, // Adjust the card width as needed
                      mainAxisSpacing: 20.0,
                      crossAxisSpacing: 20.0,
                    ),
                    children: viewModel.laundryDealers.map((dealer) {
                      return DealerCard(
                        goTo: () {
                          viewModel.goToDealer(dealer.id);
                        },
                        profilePhotoUrl: dealer.profilePhotoUrl,
                        name: dealer.name,
                        rating: dealer.rating,
                        id: dealer.id,
                      );
                    }).toList(),
                  ),
                ),
              ],
            ),
          ),
        ));
  }

  @override
  LoundaryViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      LoundaryViewModel();
}
